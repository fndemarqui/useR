# The Geometric Distribution (Version 2)

The Geometric Distribution (Version 2)

## Usage

``` r
dgeom2(x, prob, log = FALSE)

pgeom2(q, prob, lower.tail = TRUE, log.p = FALSE)

qgeom2(p, prob, lower.tail = TRUE, log.p = FALSE)

rgeom2(n, prob)
```

## Arguments

- x, q:

  vector of quantiles representing the total number of Bernoulli trials
  (failures + sucess).

- prob:

  probability of success in each trial. 0 \< prob \<= 1.

- log, log.p:

  logical; if TRUE, probabilities p are given as log(p).

- lower.tail:

  logical; if TRUE (default), probabilities are \\P\[X \le x\]\\;
  otherwise, \\P\[X \> x\]\\.

- p:

  vector of probabilities.

- n:

  number of observations. If length(n) \> 1, the length is taken to be
  the number required.

## Value

dgeom2 gives the density, pgeom2 gives the distribution function, qgeom2
gives the quantile function, and rgeom2 generates random deviates.

Invalid prob will result in return value NaN, with a warning.

The length of the result is determined by n for rgeom2, and is the
maximum of the lengths of the numerical arguments for the other
functions.

The numerical arguments other than n are recycled to the length of the
result. Only the first elements of the logical arguments are used.

rgeom2 returns a vector of type
[`integer`](https://rdrr.io/r/base/integer.html) unless generated values
exceed the maximum representable integer when
[`double`](https://rdrr.io/r/base/double.html) values are returned since
R version 4.0.0.

## Details

The geometric distribution with prob = p has density \$\$ f(x) =
p(1-p)^{x-1}, \$\$ for x = 1, 2, 3, ..., and \\0 \< p \leq 1\\.

If an element of x is not integer, the result of dgeom2 is zero, with a
warning.

The quantile is defined as the smallest value x such that \\F(x) \ge
p\\, where F is the distribution function.

## See also

[`Geometric`](https://rdrr.io/r/stats/Geometric.html) for the original
implementation of the geometric distribution.

[`NegBinomial2`](https://fndemarqui.github.io/useR/reference/NegBinomial2.md)
for the negative binomial (Version 2) which generalizes the geometric
distribution (Version 2).
