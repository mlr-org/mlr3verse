# Print mlr3\* package versions

Returns the package versions of imported and suggested mlr3 packages as
a
[`data.table::data.table()`](https://rdrr.io/pkg/data.table/man/data.table.html).
Suggested packages that are not installed are listed with version `NA`.

## Usage

``` r
mlr3verse_info()
```

## Examples

``` r
mlr3verse_info()
#> Key: <package>
#>              package version
#>               <char>  <char>
#>  1:            bbotk   1.9.0
#>  2:      miesmuschel 0.0.4.3
#>  3:             mlr3   1.5.0
#>  4:    mlr3batchmark   0.2.2
#>  5:    mlr3benchmark   0.1.7
#>  6:      mlr3cluster   0.3.0
#>  7:         mlr3data   0.9.0
#>  8:           mlr3db   0.7.1
#>  9:     mlr3fairness   0.4.0
#> 10:          mlr3fda   0.3.0
#> 11:      mlr3filters   0.9.0
#> 12:      mlr3fselect   1.5.1
#> 13:    mlr3hyperband   1.1.0
#> 14:       mlr3inferr   0.2.1
#> 15:     mlr3learners  0.14.0
#> 16:          mlr3mbo   1.1.0
#> 17:         mlr3misc  0.21.0
#> 18:          mlr3oml  0.12.0
#> 19:    mlr3pipelines  0.11.0
#> 20:        mlr3proba   0.8.8
#> 21:      mlr3spatial   0.6.1
#> 22: mlr3spatiotempcv   2.3.4
#> 23:      mlr3summary   0.1.2
#> 24:        mlr3torch   0.3.3
#> 25:       mlr3tuning   1.6.0
#> 26: mlr3tuningspaces   0.6.0
#> 27:          mlr3viz  0.11.0
#> 28:          paradox   1.0.1
#> 29:             rush   1.0.0
#>              package version
#>               <char>  <char>
```
