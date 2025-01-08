
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ploswater

<!-- badges: start -->

[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![R-CMD-check](https://github.com/openwashdata/ploswater/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/openwashdata/ploswater/actions/workflows/R-CMD-check.yaml)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.14616993.svg)](https://zenodo.org/doi/10.5281/zenodo.14616993)

<!-- badges: end -->

The goal of ploswater is to make available data on publication trends
from the [PLOS Water Journal](https://journals.plos.org/water/).

## Installation

You can install the development version of ploswater from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("openwashdata/ploswater")
```

``` r
## Run the following code in console if you don't have the packages
## install.packages(c("dplyr", "knitr", "readr", "stringr", "gt", "kableExtra"))
library(dplyr)
library(knitr)
library(readr)
library(stringr)
library(gt)
library(kableExtra)
```

Alternatively, you can download the individual datasets as a CSV or XLSX
file from the table below.

1.  Click Download CSV. A window opens that displays the CSV in your
    browser.
2.  Right-click anywhere inside the window and select “Save Page As…”.
3.  Save the file in a folder of your choice.

| dataset | CSV | XLSX |
|:---|:---|:---|
| ploswater | [Download CSV](https://github.com/openwashdata/ploswater/raw/main/inst/extdata/ploswater.csv) | [Download XLSX](https://github.com/openwashdata/ploswater/raw/main/inst/extdata/ploswater.xlsx) |

## Data

The package provides access to data from publications in the [PLOS Water
Journal](https://journals.plos.org/water/). This data includes
information on publication types, SDGs targeted, authors, institutions,
and more.

``` r
library(ploswater)
```

### ploswater

The dataset `ploswater` contains data about … It has 240 observations
and 1506 variables

``` r
ploswater |> 
  select(1:10) |>  # Select first 10 columns
  head(3) |> 
  gt::gt() |>
  gt::as_raw_html()
```

<div id="vdoroygkdo" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  &#10;  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false" style="-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; display: table; border-collapse: collapse; line-height: normal; margin-left: auto; margin-right: auto; color: #333333; font-size: 16px; font-weight: normal; font-style: normal; background-color: #FFFFFF; width: auto; border-top-style: solid; border-top-width: 2px; border-top-color: #A8A8A8; border-right-style: none; border-right-width: 2px; border-right-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #A8A8A8; border-left-style: none; border-left-width: 2px; border-left-color: #D3D3D3;" bgcolor="#FFFFFF">
  <thead style="border-style: none;">
    <tr class="gt_col_headings" style="border-style: none; border-top-style: solid; border-top-width: 2px; border-top-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3;">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="id" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">id</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="doi" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">doi</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="title" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">title</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="display_name" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">display_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="publication_year" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" bgcolor="#FFFFFF" valign="bottom" align="right">publication_year</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="publication_date" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" bgcolor="#FFFFFF" valign="bottom" align="right">publication_date</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="language" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">language</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="type" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="type_crossref" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">type_crossref</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="indexed_in" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left">indexed_in</th>
    </tr>
  </thead>
  <tbody class="gt_table_body" style="border-style: none; border-top-style: solid; border-top-width: 2px; border-top-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #D3D3D3;">
    <tr style="border-style: none;"><td headers="id" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://openalex.org/W4281638009</td>
<td headers="doi" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://doi.org/10.1371/journal.pwat.0000026</td>
<td headers="title" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Water, sanitation, and women’s empowerment: A systematic review and qualitative metasynthesis</td>
<td headers="display_name" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Water, sanitation, and women’s empowerment: A systematic review and qualitative metasynthesis</td>
<td headers="publication_year" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022</td>
<td headers="publication_date" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022-06-07</td>
<td headers="language" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">en</td>
<td headers="type" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">review</td>
<td headers="type_crossref" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">journal-article</td>
<td headers="indexed_in" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">"crossref"</td></tr>
    <tr style="border-style: none;"><td headers="id" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://openalex.org/W4311557053</td>
<td headers="doi" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://doi.org/10.1371/journal.pwat.0000058</td>
<td headers="title" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Water remains a blind spot in climate change policies</td>
<td headers="display_name" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Water remains a blind spot in climate change policies</td>
<td headers="publication_year" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022</td>
<td headers="publication_date" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022-12-15</td>
<td headers="language" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">en</td>
<td headers="type" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">article</td>
<td headers="type_crossref" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">journal-article</td>
<td headers="indexed_in" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">"crossref"</td></tr>
    <tr style="border-style: none;"><td headers="id" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://openalex.org/W4225499001</td>
<td headers="doi" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">https://doi.org/10.1371/journal.pwat.0000007</td>
<td headers="title" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Operationalizing a routine wastewater monitoring laboratory for SARS-CoV-2</td>
<td headers="display_name" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Operationalizing a routine wastewater monitoring laboratory for SARS-CoV-2</td>
<td headers="publication_year" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022</td>
<td headers="publication_date" class="gt_row gt_right" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: right; font-variant-numeric: tabular-nums;" valign="middle" align="right">2022-02-15</td>
<td headers="language" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">en</td>
<td headers="type" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">article</td>
<td headers="type_crossref" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">journal-article</td>
<td headers="indexed_in" class="gt_row gt_left" style="border-style: none; padding-top: 8px; padding-bottom: 8px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">"crossref"</td></tr>
  </tbody>
  &#10;  
</table>
</div>

For an overview of the variable names, see the following table.

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:200px; ">

<table class="table table-striped" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
variable_name
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
variable_type
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
description
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Unique Identifier
</td>
</tr>
<tr>
<td style="text-align:left;">
doi
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
DOI of the study
</td>
</tr>
<tr>
<td style="text-align:left;">
title
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Title of the study
</td>
</tr>
<tr>
<td style="text-align:left;">
display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Displayed Name in OpenAlex
</td>
</tr>
<tr>
<td style="text-align:left;">
publication_year
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Year of publication
</td>
</tr>
<tr>
<td style="text-align:left;">
publication_date
</td>
<td style="text-align:left;">
Date
</td>
<td style="text-align:left;">
Date of publication
</td>
</tr>
<tr>
<td style="text-align:left;">
language
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Original publication language
</td>
</tr>
<tr>
<td style="text-align:left;">
type
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Indicates the type of scholarly work
</td>
</tr>
<tr>
<td style="text-align:left;">
type_crossref
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
The work type as specified by Crossref
</td>
</tr>
<tr>
<td style="text-align:left;">
indexed_in
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
authorships
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Contains detailed information about authors and their institutional
affiliations
</td>
</tr>
<tr>
<td style="text-align:left;">
institution_assertions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Information about institutional affiliations
</td>
</tr>
<tr>
<td style="text-align:left;">
countries_distinct_count
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Total number of unique country codes among the work’s authorships
</td>
</tr>
<tr>
<td style="text-align:left;">
institutions_distinct_count
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Total number of unique institutions among the work’s authorships
</td>
</tr>
<tr>
<td style="text-align:left;">
corresponding_author_ids
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
List of OpenAlex IDs for corresponding authors
</td>
</tr>
<tr>
<td style="text-align:left;">
corresponding_institution_ids
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
List of OpenAlex IDs for institutions of corresponding authors
</td>
</tr>
<tr>
<td style="text-align:left;">
fwci
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Field-weighted Citation Impact, calculated as the ratio of citations
received to citations expected in the publication year and three
following years
</td>
</tr>
<tr>
<td style="text-align:left;">
has_fulltext
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
Boolean indicating if the full text is searchable in OpenAlex
</td>
</tr>
<tr>
<td style="text-align:left;">
fulltext_origin
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Indicates how the full text was obtained (e.g., “pdf” or “ngrams”) when
has_fulltext is true
</td>
</tr>
<tr>
<td style="text-align:left;">
cited_by_count
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Number of times the work has been cited
</td>
</tr>
<tr>
<td style="text-align:left;">
is_retracted
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
Wether study was retracted or not
</td>
</tr>
<tr>
<td style="text-align:left;">
is_paratext
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
topics
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
keywords
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Keywords in the text
</td>
</tr>
<tr>
<td style="text-align:left;">
concepts
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Key concepts in the text
</td>
</tr>
<tr>
<td style="text-align:left;">
mesh
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
locations_count
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Number of different places where the work can be found
</td>
</tr>
<tr>
<td style="text-align:left;">
locations
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
List of all places where the work exists, including journals,
proceedings, repositories (like arXiv), and institutional repositories
</td>
</tr>
<tr>
<td style="text-align:left;">
sustainable_development_goals
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Classifications linking the work to UN Sustainable Development Goals
(SDGs)
</td>
</tr>
<tr>
<td style="text-align:left;">
grants
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Information about research funding and grants associated with the work
</td>
</tr>
<tr>
<td style="text-align:left;">
datasets
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Associated research datasets
</td>
</tr>
<tr>
<td style="text-align:left;">
versions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Different versions of the work available across locations (e.g.,
peer-reviewed published version, preprint version)
</td>
</tr>
<tr>
<td style="text-align:left;">
referenced_works_count
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
Number of works this work cites
</td>
</tr>
<tr>
<td style="text-align:left;">
referenced_works
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
List of works cited by this work
</td>
</tr>
<tr>
<td style="text-align:left;">
related_works
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Works that are related to this one
</td>
</tr>
<tr>
<td style="text-align:left;">
cited_by_api_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
URL to access the list of works citing this work
</td>
</tr>
<tr>
<td style="text-align:left;">
counts_by_year
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
Year-by-year breakdown of citation counts, excluding citations older
than ten years
</td>
</tr>
<tr>
<td style="text-align:left;">
updated_date
</td>
<td style="text-align:left;">
c(“POSIXct”, “POSIXt”)
</td>
<td style="text-align:left;">
ISO 8601 date string showing when the record was last modified
</td>
</tr>
<tr>
<td style="text-align:left;">
created_date
</td>
<td style="text-align:left;">
Date
</td>
<td style="text-align:left;">
ISO 8601 date string indicating when the work was first added to
OpenAlex
</td>
</tr>
<tr>
<td style="text-align:left;">
ids.openalex
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
The primary identifier in OpenAlex
</td>
</tr>
<tr>
<td style="text-align:left;">
ids.doi
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
The Digital Object Identifier, serving as the Canonical External ID
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.is_oa
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.landing_page_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.pdf_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.license
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.license_id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.version
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.is_accepted
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.is_published
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.issn_l
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.issn
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.is_oa
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.is_in_doaj
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.is_core
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.host_organization
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.host_organization_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.host_organization_lineage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.host_organization_lineage_names
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_location.source.type
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
open_access.is_oa
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
open_access.oa_status
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
open_access.oa_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
open_access.any_repository_has_fulltext
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_list.value
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_list.currency
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_list.value_usd
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_list.provenance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_paid.value
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_paid.currency
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_paid.value_usd
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
apc_paid.provenance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
citation_normalized_percentile.value
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
citation_normalized_percentile.is_in_top_1_percent
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
citation_normalized_percentile.is_in_top_10_percent
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
cited_by_percentile_year.min
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
cited_by_percentile_year.max
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
biblio.volume
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
biblio.issue
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
biblio.first_page
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
biblio.last_page
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.score
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.subfield.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.subfield.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.field.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.field.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.domain.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
primary_topic.domain.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.is_oa
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.landing_page_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.pdf_url
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.license
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.license_id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.version
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.is_accepted
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.is_published
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.id
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.display_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.issn_l
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.issn
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.is_oa
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.is_in_doaj
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.is_core
</td>
<td style="text-align:left;">
logical
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.host_organization
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.host_organization_name
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.host_organization_lineage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.host_organization_lineage_names
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
best_oa_location.source.type
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.water
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.and
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sanitation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.programs
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.have
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.focused
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.on
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.value
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.in
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.improving
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conditions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.evidence
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.This
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.review
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.identified
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.empirical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.research
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.that
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.and/or
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reported
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.used,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.methods
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.if
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.was
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.the
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.A
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conceptual
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.model
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.of
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.which
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.includes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.three
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resources,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.institutional
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.analysis.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.We
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Global
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.for
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.peer-reviewed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sources
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.either
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.related
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.terms
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.from
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.were
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.representing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.over
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.used
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.followed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.framework
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.analysis
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.approach,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.using
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.as
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.two
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.additional
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.relevant
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.to
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.The
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.majority
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.or
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.published
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.since
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.proportion
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.studies
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.half
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.yet
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.only
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.provided
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.a
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.least
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assessing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.are
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.is
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.main
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.more
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.approaches
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reduce
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.systemic
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resources
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.For
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.first
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.time
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.has
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.been
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.focus
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.both
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.2
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.we
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.argue
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.here
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.not
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.attention
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.it
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.scientists
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.policymakers
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.several
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.historical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.temperature
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.change
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.further
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.increased
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.with
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.use
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.global
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.levels
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.by
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.an
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aim
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.be
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.consistent
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.current
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.policy
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.increasing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.extreme
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.weather
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sometimes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.changes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.such
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.land
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.variability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cycle
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.season
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.season,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.year
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.also
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.impacts
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.all
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.needed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.understanding
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.effectiveness
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.future
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.adaptation
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.strategies
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reducing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.water-related
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.climate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Finally,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.role
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assessment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.require
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.whose
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.feasibility
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.efficiency
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resources.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.It
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.thus
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.essential
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.develop
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.integrated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.approach
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.change,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.would
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.between
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hydrological
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.testing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.novel
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.tool
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.public
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.health
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.monitoring,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.but
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.laboratory
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.capacity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.provide
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.monitoring
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.at
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.locations
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.where
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.potential
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.practices
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wastewater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.currently
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quality
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.control
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.may
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.across
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.many
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.academic
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.out
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Here,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.our
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.including
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.standard
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operating
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.present
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.data
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.discuss
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reporting
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.this
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.information
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.will
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.others
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.developing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.support
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decision-making.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.agriculture
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.significant
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.food
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.socio-economic
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.people
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.living
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.some
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.UN
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Organization
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(e.g.,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.World
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.River
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.these
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.areas
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resource
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sustainability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.its
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.unique
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.risk
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.process
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.results
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.multiple
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.natural
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recently
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.river
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sustainable
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.development
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.particularly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lack
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.leads
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.discharge
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.flow
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.agricultural
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.plant
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.uptake
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.effects
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.crop
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.growth
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.higher
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lower
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.soil
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.microbial
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.activity,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.overall
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.case
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.critical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.regions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.can
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.considered
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.possible
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Two
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.among
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.home
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.animal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.strong
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rural
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.major
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.area
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.important
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hydraulic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.works
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Republic
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.region
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.faces
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.due
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.\[4\],
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.increasingly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.challenging
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recent
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.attributed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.range
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.building
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.studied
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.February
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.biological
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.parameters
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pH,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.total
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.count
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.analyzed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.understand
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.differences
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.within
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.chlorine
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.concentration
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decreased
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.p
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.&lt;
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.point
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.plumbing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.As
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.much
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.greater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.compared
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.every
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sampling
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.found
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.highest
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.no
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recorded
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.during
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lead
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.health-based
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.drinking
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.four
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.same
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.shared
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.use.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conducted
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.one
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.required
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.supply.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.viable
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.method
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.need
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.19
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.than
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.50
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.before
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.prior
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.suggest
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.significantly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.implications
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.collected
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infrastructure
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.engineering
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.security
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.In
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.freshwater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.society
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.environment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.could
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.benefit
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Such
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conservation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ongoing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.species
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.their
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.systems.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.However,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.make
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.meaningful
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contributions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.must
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.established
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.link
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.common
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.six
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.actions
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.life
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.science
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.highlight
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.knowledge
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.necessary
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.how
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.play
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.direct
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aquatic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quality,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ecosystems.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ensure
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ecosystems
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.species.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Water
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.managers
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.consider
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.whether
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.concern
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reservoir
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.management,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.modeling
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.requires
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.models
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.watershed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.various
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.most
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.practical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.selecting
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.availability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.number
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decisions
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.regarding
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.best
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.relative
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.importance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.different
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.limited
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.should
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assess
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.existing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.then
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.limitations
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.questions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.previous
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.While
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.there
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.work
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.options
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.activity
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.leading
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.widespread
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lake
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.key
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.health.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.anthropogenic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.affecting
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.space
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.potentially
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.highly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.responses
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.poorly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.million
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.estimates
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.4
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.km
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quantify
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.2020
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.large
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cumulative
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.increase
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.human
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lakes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.positive
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.trends
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.times
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demonstrates
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.inform
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.management
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.determine
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.local
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Existing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.literature
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.water,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sanitation,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hygiene
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(WASH)
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.United
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.States,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.issues
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.areas.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.emerging
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infectious
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.disease
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.face
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.challenges
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.urban
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.study
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.WASH
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.needs
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.through
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interviews
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(n
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.=
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.participants
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.18
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.years
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.lived
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.five
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.had
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Using
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.analysis,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.factors
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.access,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.outcomes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.result
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.explore
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.experiences
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.who
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.those
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.did
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.not.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Our
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.findings
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.revealed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contributed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.physical,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.relationship
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.communities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.impacted
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.facilities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.safe
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.available
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.inadequate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.access
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.collaboration
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reduction
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.services
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.example,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hand
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.community
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.measures
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.transmission
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.COVID-19
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.other
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.diseases.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.guidance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.standards
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.new
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.tools
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.targeted
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assessments
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pandemic.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.organizations
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.evaluate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interventions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.mitigate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.middle-income
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.countries
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.focusing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.household
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.settings
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.observed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.gaps
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.specifically
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.often
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.about
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.high
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.after
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stations
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.points
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.external
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.needed.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.refinement
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.help
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aspects
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.efforts
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.remain
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.functional
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.inclusive
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.U.S.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.service
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.health,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.economic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.expressed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sample
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.approximately
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.city
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.perceptions
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.barriers
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.meeting
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.question
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cost
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.capital
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.projects
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.increases
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infrastructure.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demonstrate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.disparities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.great
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.little
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.condition
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.making
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.financial
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decision
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.clean
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.substantial
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.States
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cannot
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pathways
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.influence
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.behaviors
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.vulnerable
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interviewed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.low-income
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.bill
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.content
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interview
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Results
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.showed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ways
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.made
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.times.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.influenced
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.utility
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.included
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reduced
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decline
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.government
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.affordable
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.households.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infrastructure,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.state
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.well
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.municipal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.policies
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.households
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.growing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.residents
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.balance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resulting
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.affect
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.loss
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.impact
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.system,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.influencing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.frequency
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.During
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.past
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.basin
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.uses
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.along
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.predicted
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.temporal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.spatial
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sediment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.effective
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.50%
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.baseline
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cause
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.3%
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.mean
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.surface
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.solid
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.estimated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.concentrations
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cover
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.biochar
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.remove
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.improve
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.P
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.molecular
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.carbon
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.produced
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.under
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.3
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.gas
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.mass
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.capacities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.near
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.structure
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.indicated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.advance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.treatment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.processes
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.employed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stormwater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stream
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.performance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.metrics
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.they
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.catchment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aimed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.response
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.application
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.experiment
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.test
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.improved
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.achieved
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.experimental
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.similar
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.per
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.implementation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.achieve
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.success
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.final
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.into
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demand
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.measure
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.period
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.varied
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.modelling
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.broader
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.decades
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.environmental
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.surveillance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pathogens
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.single
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pathogen
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.small
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.few
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quantitative
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.developed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.targets
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.applied
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.samples
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.plants
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.From
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detected
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.find
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.E
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index..
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.coli
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.notable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.broad
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.expanding
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.fecal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.waste
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.solids
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.changed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.objective
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.One
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.when
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.To
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.trend
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.index
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.measurements
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.characterize
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.trends.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.better
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.so
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.5
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detect
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.respectively.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.providing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.changing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.2021
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.without
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.domestic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.systems
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.performed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.combined
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Texas
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.affected
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.populations
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cross-sectional
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.survey
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.shows
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.size
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.system.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.mostly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.disproportionately
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.likely
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.utilities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.respondents
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resilience
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.efficient
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.emergency
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.physical
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.based
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.system
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.complex
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conventional
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.remote
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sensing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.New
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.addressing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.mainly
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.types
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.problems
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.challenges,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.identify
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.opportunities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hydrology
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.around
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.insights
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.just
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.propose
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.larger
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.big
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.call
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.action
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.context
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.practice
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sector
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.private
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.engagement
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.good
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.very
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.issue
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pollution
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.throughout
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.entire
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.West
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.distribution
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pollutants
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.considering
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.level,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.next
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.generated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.level
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.each
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.selected
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.estimate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.low
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.alternative
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.solution
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.globally
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.precipitation,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.processes.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.performance.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.estimating
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.characteristics
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.remains
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.models,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.method.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Spatial
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.associated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cold
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.association
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.variations
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operational
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.full-scale
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.integration
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.chemical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.accumulation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.being
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.driver
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.upon
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.complex,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.indicating
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.These
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.water.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.By
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.process,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.targeting
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.long-term
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quality.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.urbanization,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.population
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.inequality
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.study,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.peri-urban
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.examine
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.explained
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.regression
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.source
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pressure
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.supply
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.odds
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ratio
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.factor
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Findings
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.even
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.services,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stakeholders
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.guide
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infrastructural
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.settings.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.dynamics
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.transboundary
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.nature
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cross
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rivers,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Thus,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.defined
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.beyond
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.field
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.concept.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.With
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.riverine
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.become
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.crucial
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.study.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.i.e.,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Yet,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.primary
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.because
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Moreover,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.what
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.them
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.do
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.extensive
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.qualitative
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.South
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.purpose
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.article
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.poor
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.toward
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.community.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.include
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.education
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.towards
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.equitable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.and,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.on-site
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aims
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.taken
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.parameters.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hydrologic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.while
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assessed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.downstream
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.difficulties
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.simulate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conditions,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contaminants.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.scale
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.National
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Monitoring
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.monitored
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.antimicrobial
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.alignment
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Health
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.planning,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.waters
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.function
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.humans,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.animals,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.environment.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sequencing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.coverage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.shown
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.enhance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.report
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.profile
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.distinct
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sites
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.enriched
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.almost
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.30%
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Additionally,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.specific
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sites.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Development
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.technologies
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.vulnerability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.scheme
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.design
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.period.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.variables
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.less
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.treatment.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conclude
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.appropriate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.urgent
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.set
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pressures
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wastewater,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.maintain
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.involve
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.general
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.way
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.get
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.participation
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.world
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.take
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.groundwater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.science,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.respect
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.authorities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.social
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.knowledge,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.environment,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.encourage
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.tap
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.effect
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.composition
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.relatively
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.simple
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.adapted
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.expertise
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.manage
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.safety
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.exacerbated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.working
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.capacity,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.informant
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.10
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.risks
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.led
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.adequate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.diseases
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.investigated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recommended
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.active
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.training
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.flood
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.treated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.industrial
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demands
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.up
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.put
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.governance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.respond
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.values
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.complexities
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.status
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.time,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.exist
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.groups
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.regional
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.networks
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.representation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.activities
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.project
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.designs
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.largest
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.located
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.m
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.meet
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.income
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.census
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.users
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.).
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rather
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.patterns,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.patterns
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.products
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.techniques
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.addition
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.evaluated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.monthly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.statistical
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.indicators
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.correlation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.consistently
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Overall,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.country
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.type
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.time.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.technical
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.paper
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.researchers
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demonstrated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.irrigated
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Specifically,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.nine
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.30
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.tested
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.individually
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.obtained
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.years,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.applicable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.oxygen
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.effluent
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.secondary
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.costs
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.still
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.promising
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reports
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.)
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.installed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.months
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.measured
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.evaluation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.show
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.nearly
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.desired
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.target
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.varying
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.measurement
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.share
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.There
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.waters,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detection
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quantified
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.timely
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.waters.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.largely
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.governance,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.management.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.learn
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.enabling
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Kenya.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.below
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Furthermore,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Escherichia
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.samples,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.3)
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detected.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.They
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.together
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.driven
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rapid
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.calls
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.efforts.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reliable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.international
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.national
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.improvements
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.underlying
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.map
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.implemented
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.restoration
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interconnected
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.directly
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.opportunity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.driving
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.vision
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.free
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.known
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.parts
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.temperature,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.All
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.residence
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.culture
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aeruginosa
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.storage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.bacteria
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.presence
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.genome
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Despite
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pit
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.latrines
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.understood.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.characterized
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sludge
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.surveys
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contain
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.area.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.degradation
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.maintenance
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.governments
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.released
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.promote
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.actors
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.assigned
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.93
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.influences
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.formal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.align
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recommend
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.expand
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.shift
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Water,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.attributable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.trained
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.staff
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sustain
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.guidelines
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.accountability
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.order
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.enhanced
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.zero
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operator
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reaching
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sectors
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.relationships
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.formation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.clustering
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contrast,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Multiple
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.compounds
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.containing
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Further
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.investigation
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.late
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.summer
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.provides
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.exposure
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.growth,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.supply,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ensuring
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.quantity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.document
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.primarily
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Environmental
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.First,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.organic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.matter
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sewage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operations.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.When
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.civil
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.linked
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.examining
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contribute
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.predictors
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sanitation.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Based
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.research.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Ghana
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.prevalence
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.piped
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.third
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.open
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.members
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Key
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.themes
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.1)
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.2)
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.city.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.loads
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Bay
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.60%
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.shorter
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.median
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.does
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detectable
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contamination
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.infiltration
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.recharge
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.groundwater,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.makes
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conduct
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.upstream
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.threats
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.activities,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.following
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.uncertainty
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.urbanized
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.air
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.whereas
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.constant
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.years.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.useful
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.conditions.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.practitioners
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rely
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rainwater
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.presents
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.collection
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.intervention
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.completed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.11%
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.remained
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.provision
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.locally
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.countries.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.second
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.site
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.explored
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interactive
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.intensity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Understanding
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.subsequent
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.flows
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.detailed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.watersheds
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Upper
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.dissolved
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Colorado
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.previously
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.protection
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.maximum
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contaminant
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.participatory
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.gender
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Cambodia
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.program
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reflect
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.extent
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.indicate
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.engaging
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.supporting
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.derived
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sector,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.investigate
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.adoption
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.aged
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.children
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.facilities.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Developing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.journal
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.articles
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.last
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.height
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.worldwide
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.offers
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.dynamic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.areas,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.magnitude
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.widely
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.humanitarian
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Research
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.online
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.score
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.according
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.experts
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.evaluating
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contexts.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.priorities.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.21
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.means
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.parameters,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.interest
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.insecurity.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.semi-arid
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.insecurity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.dry
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.techniques.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Given
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.offer
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.prioritize
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.risks,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.filters
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.incidence
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.designed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.risk.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Local
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.coordination
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.use,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.isotope
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(i.e.,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.H
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.seasons
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.validated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.annually
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wells
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.reliability
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.overcome
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.households,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.women
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.safely
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.managed
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Although
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.establishing
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.divided
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.±
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.12
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.9
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.15
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.winter
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.farmers
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.actual
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.operated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.northern
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.arsenic
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.presented
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.ranged
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.limits
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.60
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.sampled
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.former
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wellbeing.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.year,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.dataset
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.suggesting
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.fully
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.San
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Out
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.disposal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.waterborne
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(e.g. 
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.practices,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.volume
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.passive
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.coupled
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.faecal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.indicator
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contexts
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.real-time
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.achieving
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.undertaken
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.First
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.approaches,
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.planetary
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.salinity
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.resulted
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.16S
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rRNA
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.gene
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.prioritized
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.levels.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.prevent
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.fish
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.site.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.removal
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.pH
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.confirmed
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.possibly
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.leaves
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.September
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.socially
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.consumption
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.linear
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.explain
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.until
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.outcomes,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.required.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.regulatory
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.adopted
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.connections
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.occur
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.short-term
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wells.
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.(including
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Both
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.events
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.contaminated
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.worked
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.knowledges
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.collaborative
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.central
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.climatic
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.outcome
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.settings,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.extract
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.production,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.comparison
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.tank
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.log
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.samples.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Therefore,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.wetland
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Cl
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.months,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.rapidly
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.identification
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.hundreds
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.short
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.coming
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.always
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.demand,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.cholera
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Sanitation
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.successful
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.users,
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.Four
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.stakeholder
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.engage
</td>
<td style="text-align:left;">
character
</td>
<td style="text-align:left;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
abstract_inverted_index.future.
</td>
<td style="text-align:left;">
numeric
</td>
<td style="text-align:left;">
NA
</td>
</tr>
</tbody>
</table>

</div>

## Example

``` r
library(ploswater)
library(ggplot2)
library(lubridate)

# Convert publication_date to Date type
ploswater$publication_date <- as.Date(ploswater$publication_date)

# Create year-month column and count publications
monthly_counts <- ploswater %>%
  mutate(publication_month = floor_date(publication_date, "month")) %>%
  count(publication_month) %>%
  arrange(publication_month)

# Create bar chart
ggplot(monthly_counts, aes(x = publication_month, y = n)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(x = "",
       y = "Number of Publications",
       title = "Number of Publications per Month") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_x_date(date_breaks = "3 month", 
               date_labels = "%b %Y")
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" style="display: block; margin: auto;" />

``` r
# Create citation impact visualization
ggplot(ploswater, aes(x = publication_date, y = cited_by_count)) +
  geom_point(aes(size = fwci), alpha = 0.6) +
  scale_size_continuous(name = "Field-Weighted\nCitation Impact") +
  labs(x = "Publication Date",
       y = "Number of Citations",
       title = "Citation Impact Over Time") +
  theme_minimal()
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" style="display: block; margin: auto;" />

``` r
library(gt)

# Compute summary statistics
summary_stats <- data.frame(
  Statistic = c(
    "Mean Citations",
    "Median Citations",
    "Mean FWCI",
    "Total Publications",
    "Correlation: Citations & FWCI"
  ),
  Value = c(
    mean(ploswater$cited_by_count, na.rm = TRUE),
    median(ploswater$cited_by_count, na.rm = TRUE),
    mean(ploswater$fwci, na.rm = TRUE),
    round(nrow(ploswater), 0),
    cor(ploswater$cited_by_count, ploswater$fwci, use = "complete.obs")
  )
)

# Create and print the table using gt
summary_stats %>%
  gt() %>%
  tab_header(
    title = "Summary Statistics"
  )
```

<div id="rpoeoweyhw" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#rpoeoweyhw table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#rpoeoweyhw thead, #rpoeoweyhw tbody, #rpoeoweyhw tfoot, #rpoeoweyhw tr, #rpoeoweyhw td, #rpoeoweyhw th {
  border-style: none;
}
&#10;#rpoeoweyhw p {
  margin: 0;
  padding: 0;
}
&#10;#rpoeoweyhw .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#rpoeoweyhw .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#rpoeoweyhw .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#rpoeoweyhw .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#rpoeoweyhw .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#rpoeoweyhw .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#rpoeoweyhw .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#rpoeoweyhw .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#rpoeoweyhw .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#rpoeoweyhw .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#rpoeoweyhw .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#rpoeoweyhw .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#rpoeoweyhw .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#rpoeoweyhw .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#rpoeoweyhw .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rpoeoweyhw .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#rpoeoweyhw .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#rpoeoweyhw .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#rpoeoweyhw .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rpoeoweyhw .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#rpoeoweyhw .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rpoeoweyhw .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#rpoeoweyhw .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rpoeoweyhw .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#rpoeoweyhw .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rpoeoweyhw .gt_left {
  text-align: left;
}
&#10;#rpoeoweyhw .gt_center {
  text-align: center;
}
&#10;#rpoeoweyhw .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#rpoeoweyhw .gt_font_normal {
  font-weight: normal;
}
&#10;#rpoeoweyhw .gt_font_bold {
  font-weight: bold;
}
&#10;#rpoeoweyhw .gt_font_italic {
  font-style: italic;
}
&#10;#rpoeoweyhw .gt_super {
  font-size: 65%;
}
&#10;#rpoeoweyhw .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#rpoeoweyhw .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#rpoeoweyhw .gt_indent_1 {
  text-indent: 5px;
}
&#10;#rpoeoweyhw .gt_indent_2 {
  text-indent: 10px;
}
&#10;#rpoeoweyhw .gt_indent_3 {
  text-indent: 15px;
}
&#10;#rpoeoweyhw .gt_indent_4 {
  text-indent: 20px;
}
&#10;#rpoeoweyhw .gt_indent_5 {
  text-indent: 25px;
}
&#10;#rpoeoweyhw .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#rpoeoweyhw div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Summary Statistics</td>
    </tr>
    &#10;    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Statistic">Statistic</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Value">Value</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Statistic" class="gt_row gt_left">Mean Citations</td>
<td headers="Value" class="gt_row gt_right">3.0583333</td></tr>
    <tr><td headers="Statistic" class="gt_row gt_left">Median Citations</td>
<td headers="Value" class="gt_row gt_right">1.0000000</td></tr>
    <tr><td headers="Statistic" class="gt_row gt_left">Mean FWCI</td>
<td headers="Value" class="gt_row gt_right">1.3637913</td></tr>
    <tr><td headers="Statistic" class="gt_row gt_left">Total Publications</td>
<td headers="Value" class="gt_row gt_right">240.0000000</td></tr>
    <tr><td headers="Statistic" class="gt_row gt_left">Correlation: Citations &amp; FWCI</td>
<td headers="Value" class="gt_row gt_right">0.4791594</td></tr>
  </tbody>
  &#10;  
</table>
</div>

## License

Data are available as
[CC-BY](https://github.com/openwashdata/%7B%7B%7Bpackagename%7D%7D%7D/blob/main/LICENSE.md).

## Citation

Please cite this package using:

``` r
citation("ploswater")
#> To cite package 'ploswater' in publications use:
#> 
#>   Dubey Y (2025). "ploswater: Data on Publications in PLOS Water
#>   Journal." doi:10.5281/zenodo.14616993
#>   <https://doi.org/10.5281/zenodo.14616993>,
#>   <https://github.com/openwashdata/ploswater>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Misc{dubey:2025,
#>     title = {ploswater: Data on Publications in PLOS Water Journal},
#>     author = {Yash Dubey},
#>     year = {2025},
#>     doi = {10.5281/zenodo.14616993},
#>     url = {https://github.com/openwashdata/ploswater},
#>     abstract = {Provides access to publishing trends from PLOS Water Journal.},
#>     version = {0.0.0.9000},
#>   }
```
