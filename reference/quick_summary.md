# Generate Quick Summary Statistics for Numeric Columns Produces a summary table for all numeric columns in a data frame, including mean, median, standard deviation, min, max, and missing values

Generate Quick Summary Statistics for Numeric Columns Produces a summary
table for all numeric columns in a data frame, including mean, median,
standard deviation, min, max, and missing values

## Usage

``` r
quick_summary(data)
```

## Arguments

- data:

  A data frame

## Value

A data frame containing summary statistics for each numeric column

## Examples

``` r
df <- data.frame(
 age = c(20, 25, 30, NA),
 score = c(80, 90, 85, 88),
 group = c("A", "B", "A", "B")
 )
 quick_summary(df)
```
