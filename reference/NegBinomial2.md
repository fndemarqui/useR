# The Negative Binomial Distribution (Version 2)

The Negative Binomial Distribution (Version 2)

## Usage

``` r
dnbinom2(x, size, prob, mu, log = FALSE)

pnbinom2(q, size, prob, mu, lower.tail = TRUE, log.p = FALSE)

qnbinom2(p, size, prob, mu, lower.tail = TRUE, log.p = FALSE)

rnbinom2(n, size, prob, mu)
```

## Arguments

- x:

  vector of (non-negative integer) quantiles.

- size:

  total number of successful trials (failures + successes), or
  dispersion parameter (the shape parameter of the gamma mixing
  distribution). Must be strictly positive, need not be integer.

- prob:

  probability of success in each trial. 0 \< prob \<= 1.

- mu:

  alternative parametrization via mean: see ‘Details’.

- log, log.p:

  logical; if TRUE, probabilities p are given as log(p).

- q:

  vector of quantiles.

- lower.tail:

  logical; if TRUE (default), probabilities are \\P\[X \le x\]\\;
  otherwise, \\P\[X \> x\]\\.

- p:

  vector of probabilities.

- n:

  number of observations. If length(n) \> 1, the length is taken to be
  the number required.

## Value

dnbinom2 gives the density, pnbinom2 gives the distribution function,
qnbinom2 gives the quantile function, and rnbinom2 generates random
deviates.

Invalid size or prob will result in return value NaN, with a warning.

The length of the result is determined by n for rnbinom2, and is the
maximum of the lengths of the numerical arguments for the other
functions.

The numerical arguments other than n are recycled to the length of the
result. Only the first elements of the logical arguments are used.

rnbinom2 returns a vector of type
[`integer`](https://rdrr.io/r/base/integer.html) unless generated values
exceed the maximum representable integer when
[`double`](https://rdrr.io/r/base/double.html) values are returned since
R version 4.0.0.

## Details

The negative binomial distribution with size = r and prob = p has
density \$\$ f(x) = \Gamma(x)/(\Gamma(r)(x-r)!)p^{r}(1-p)^{x-r}, \$\$
for \\r \>0\\ and x = r, r+1, r+2, ...

This represents the total number of trials (failures and sucesses) which
occur in a sequence of Bernoulli trials. The mean is \\\mu = n/p\\ and
variance \\(1-p)/p^2\\.

If an element of x is not integer, the result of dnbinom is zero, with a
warning.

The case size == 0 is the distribution concentrated at zero. This is the
limiting distribution for size approaching zero, even if mu rather than
prob is held constant. Notice though, that the mean of the limit
distribution is 0, whatever the value of \\mu\\.

The quantile is defined as the smallest value x such that \\F(x) \ge
p\\, where F is the distribution function.
