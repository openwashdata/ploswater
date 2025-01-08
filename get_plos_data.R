# Load required libraries
library(httr)
library(jsonlite)
library(dplyr)

# Helper function to flatten list columns
flatten_list_cols <- function(df) {
  # Identify list columns
  list_cols <- sapply(df, is.list)

  # For each list column, convert to string representation
  for (col in names(df)[list_cols]) {
    df[[col]] <- sapply(df[[col]], function(x) {
      if (is.null(x)) return(NA)
      if (is.list(x) || is.vector(x)) {
        # Convert list/vector to JSON string
        return(toJSON(x, auto_unbox = TRUE))
      }
      return(as.character(x))
    })
  }
  return(df)
}

# Function to fetch data using cursor pagination
fetch_all_papers <- function() {
  base_url <- "https://api.openalex.org/works"

  params <- list(
    filter = "primary_location.source.id:s4220651631",
    sort = "cited_by_count:desc",
    per_page = 100,
    cursor = "*"
  )

  all_results <- list()
  page <- 1

  repeat {
    # Add delay to respect rate limits
    Sys.sleep(0.1)

    response <- GET(
      url = base_url,
      query = params
    )

    stop_for_status(response)

    # Parse JSON with flatten=TRUE to simplify nested structures
    data <- fromJSON(rawToChar(response$content), flatten = TRUE)
    results <- data$results

    if (length(results) == 0) break

    # Convert results to data frame if it isn't already
    if (!is.data.frame(results)) {
      results <- as.data.frame(results, stringsAsFactors = FALSE)
    }

    # Store results
    all_results[[page]] <- results

    message(sprintf("Fetched page %d, total records: %d",
                    page,
                    nrow(results)))

    next_cursor <- data$meta$next_cursor
    if (is.null(next_cursor)) break

    params$cursor <- next_cursor
    page <- page + 1
  }

  # Find common columns across all data frames
  common_cols <- Reduce(intersect, lapply(all_results, colnames))

  # Subset each data frame to only include common columns
  all_results <- lapply(all_results, function(df) {
    df[, common_cols, drop = FALSE]
  })

  # Combine all results
  result_df <- bind_rows(all_results)

  # Flatten list columns before saving
  result_df <- flatten_list_cols(result_df)

  return(result_df)
}

# Execute the function
tryCatch({
  # Create data directory if it doesn't exist
  if (!dir.exists("raw-data")) {
    dir.create("raw-data")
    message("Created 'raw-data' directory")
  }

  # Set the output file path
  output_file <- file.path("raw-data", "openalex_papers.csv")

  papers_df <- fetch_all_papers()

  # Check if we got any results
  if (nrow(papers_df) > 0) {
    write.csv(papers_df,
              output_file,
              row.names = FALSE,
              fileEncoding = "UTF-8")

    message(sprintf("Successfully saved %d papers to %s",
                    nrow(papers_df),
                    output_file))
  } else {
    message("No results found")
  }
}, error = function(e) {
  message("Error occurred: ", e$message)
  print(e)  # Print full error details for debugging
})
