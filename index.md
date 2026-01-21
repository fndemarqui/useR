# useR

Datasets and functions used to teach statistics with R.

## Installation

Você pode instalar a versão de desenvolvimento do pacote **useR** a
partir do GitHub da seguinte forma:

``` r
# install.packages("pak")
pak::pak("fndemarqui/useR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(useR)
#> Loading required package: dplyr
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Loading required package: ggplot2
#> Loading required package: shiny
data(nutricao)
cv(nutricao$peso)
#> [1] 17.77399
```
