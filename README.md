
<!-- README.md is generated from README.Rmd. Please edit that file -->
### Using SNS function

The reference sample `Y` and the monitoring sample `X`.

``` r
Y = c(10,20,30,40,50,60,70,80,90,100)
X = c(30, 35, 45)
```

#### Example of conditionsl SNS with a reference sample `Y`

``` r
Y = c(10,20,30,40,50,60,70,80,90,100)
X = c(30, 35, 45)
theta = 40
Ftheta = 0.5
sample.id = c("a", "b", "c")
SNS(X = X, X.id = sample.id, Y = Y, theta = theta, Ftheta = Ftheta)
```

Output

    #> [1] -0.52440051 -0.31863936  0.08964235

#### Example of unconditionsl SNS with a reference sample `Y`

``` r
Y = c(10,20,30,40,50,60,70,80,90,100)
X = c(30, 35, 45)
theta = NULL
Ftheta = NULL
sample.id = c("a", "b", "c")
SNS(X = X, X.id = sample.id, Y = Y, theta = theta, Ftheta = Ftheta)
```

Output

    #> [1] -0.6045853 -0.3186394  0.0000000

#### Example of conditional SNS without a reference sample `Y`

``` r
Y = NULL
X = c(30, 35, 45)
theta = 40
Ftheta = 0.5
sample.id = c("a", "b", "c")
SNS(X = X, X.id = sample.id, Y = Y, theta = theta, Ftheta = Ftheta)
```

Output

    #> [1] -0.6744898 -0.3186394  0.6744898

#### Example of unconditional SNS without a reference sample `Y`

``` r
Y = NULL
X = c(30, 35, 45)
theta = NULL
Ftheta = NULL
sample.id = c("a", "b", "c")
SNS(X = X, X.id = sample.id, Y = Y, theta = theta, Ftheta = Ftheta)
```

Output

    #> [1] 0.0000000 0.6744898 0.9674216

Sequential Normal Scores
========================

The methods discussed in this packages are new nonparametric methods based on **sequential normal scores** (SNS), designed for sequences of observations, usually time series data, which may occur singly or in batches, and may be univariate or multivariate. These methods are designed to detect changes in the process, which may occur as changes in **location** (mean or median), changes in **scale** (standard deviation, or variance), or other changes of interest in the distribution of the observations, over the time observed. They usually apply to large data sets, so computations need to be simple enough to be done in a reasonable time on a computer, and easily updated as each new observation (or batch of observations) becomes available.

SNS
===

The goal of SNS is to ...

Installation
------------

You can install the released version of SNS from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("SNS")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub!
