# Safely Join Two Data Frame Performs a left join with safety checks for: duplicate keys, missing join columns, and unmatched rows

Safely Join Two Data Frame Performs a left join with safety checks for:
duplicate keys, missing join columns, and unmatched rows

## Usage

``` r
safe_join(df1, df2, by)
```

## Arguments

- df1:

  First data frame

- df2:

  Second data frame

- by:

  Column name used for joining (string)

## Value

A safely joined data frame

## Examples

``` r
df1 <- data.frame(id = c(1, 2, 3), name = c("A", "B", "C"))
df2 <- data.frame(id = c(1, 2, 4), score = c(90, 85, 70))

safe_join(df1, df2, by = "id")
#> Warning: 1 row(s) in df1 have no match in df2
#>   id name score
#> 1  1    A    90
#> 2  2    B    85
#> 3  3    C    NA
```
