
#' The Geometric Distribution (Version 2)
#' @name Geometric2
#' @aliases Geometric2
#' @aliases dgeom2
#'
#' @keywords distribution
#' @concept Univariate
#' @concept Discrete
#'
#' @export
#'
#' @param x,q	vector of quantiles representing the total number of Bernoulli trials (failures + sucess).
#' @param p	vector of probabilities.
#' @param n	number of observations. If length(n) > 1, the length is taken to be the number required.
#' @param size total number of successful trials (failures + one success), or dispersion parameter (the shape parameter of the gamma mixing distribution). Must be strictly positive, need not be integer.
#' @param prob probability of success in each trial. 0 < prob <= 1.
#' @param log,log.p	 logical; if TRUE, probabilities p are given as log(p).
#' @param lower.tail	logical; if TRUE (default), probabilities are \eqn{P[X \le x]}; otherwise, \eqn{P[X > x]}.
#'
#' @details The geometric distribution with prob = p has density
#' \deqn{
#' f(x) = p(1-p)^{x-1},
#' }
#' for x = 1, 2, 3, ..., and \eqn{0 < p \leq 1}.
#'
#' If an element of x is not integer, the result of dgeom2 is zero, with a warning.
#'
#' The quantile is defined as the smallest value x such that  \eqn{F(x) \ge p}, where F is the distribution function.
#' @return dgeom2 gives the density, pgeom2 gives the distribution function, qgeom2 gives the quantile function, and rgeom2 generates random deviates.
#'
#'Invalid prob will result in return value NaN, with a warning.
#'
#'The length of the result is determined by n for rgeom2, and is the maximum of the lengths of the numerical arguments for the other functions.
#'
#'The numerical arguments other than n are recycled to the length of the result. Only the first elements of the logical arguments are used.
#'
#'rgeom2 returns a vector of type \code{\link[base:integer]{integer}} unless generated values exceed the maximum representable integer when \code{\link[base:double]{double}} values are returned since R version 4.0.0.
#'
#' @seealso \code{\link[stats:Geometric]{Geometric}} for the original implementation of the geometric distribution.
#' @seealso \code{\link[est031:NegBinomial2]{NegBinomial2}} for the negative binomial (Version 2) which generalizes the geometric distribution (Version 2).



#' @rdname Geometric2
#' @export
#'
dgeom2 <- function(x, prob, log = FALSE){
  stats::dgeom(x-1, prob, log)
}


#' @rdname Geometric2
#' @export
#'
pgeom2 <- function(q, prob, lower.tail = TRUE, log.p = FALSE){
  stats::pgeom(q-1, prob, lower.tail, log.p)
}

#' @rdname Geometric2
#' @export
#'
qgeom2 <- function(p, prob, lower.tail = TRUE, log.p = FALSE){
  stats::qgeom(p, prob, lower.tail, log.p) + 1
}

#' @rdname Geometric2
#' @export
#'
rgeom2 <- function(n, prob){
  stats::rgeom(n, prob) + 1
}





#' The Negative Binomial Distribution (Version 2)
#' @name NegBinomial2
#' @aliases NegBinomial2
#' @aliases dnbinom2
#'
#' @keywords distribution
#' @concept Univariate
#' @concept Discrete
#'
#' @export
#'
#' @param x	vector of (non-negative integer) quantiles.
#' @param q	vector of quantiles.
#' @param p	vector of probabilities.
#' @param n	number of observations. If length(n) > 1, the length is taken to be the number required.
#' @param size total number of successful trials (failures + successes), or dispersion parameter (the shape parameter of the gamma mixing distribution). Must be strictly positive, need not be integer.
#' @param prob probability of success in each trial. 0 < prob <= 1.
#' @param mu alternative parametrization via mean: see ‘Details’.
#' @param log,log.p	 logical; if TRUE, probabilities p are given as log(p).
#' @param lower.tail	logical; if TRUE (default), probabilities are \eqn{P[X \le x]}; otherwise, \eqn{P[X > x]}.
#'
#' @details
#'
#' The negative binomial distribution with size = r and prob = p has density
#' \deqn{
#' f(x) = \Gamma(x)/(\Gamma(r)(x-r)!)p^{r}(1-p)^{x-r},
#' }
#' for \eqn{r >0}  and x = r, r+1, r+2, ...
#'
#' This represents the total number of trials (failures and sucesses) which occur in a sequence of Bernoulli trials. The mean is \eqn{\mu  = n/p} and variance \eqn{(1-p)/p^2}.
#'
#' If an element of x is not integer, the result of dnbinom is zero, with a warning.
#'
#' The case size == 0 is the distribution concentrated at zero. This is the limiting distribution for size approaching zero, even if mu rather than prob is held constant. Notice though, that the mean of the limit distribution is 0, whatever the value of \eqn{mu}.
#'
#' The quantile is defined as the smallest value x such that \eqn{F(x) \ge p}, where F is the distribution function.

#' @return dnbinom2 gives the density, pnbinom2 gives the distribution function, qnbinom2 gives the quantile function, and rnbinom2 generates random deviates.
#'
#' Invalid size or prob will result in return value NaN, with a warning.
#'
#' The length of the result is determined by n for rnbinom2, and is the maximum of the lengths of the numerical arguments for the other functions.
#'
#' The numerical arguments other than n are recycled to the length of the result. Only the first elements of the logical arguments are used.
#'
#' rnbinom2 returns a vector of type \code{\link[base:integer]{integer}} unless generated values exceed the maximum representable integer when \code{\link[base:double]{double}} values are returned since R version 4.0.0.
#'

dnbinom2 <- function(x, size, prob, mu, log = FALSE){
  stats::dnbinom(x - size, size, prob, mu, log)
}

#' @rdname NegBinomial2
#' @export
#'
pnbinom2 <- function(q, size, prob, mu, lower.tail = TRUE, log.p = FALSE){
  stats::pnbinom(q - size, size, prob, mu, lower.tail, log.p)
}


#' @rdname NegBinomial2
#' @export
#'
qnbinom2 <- function(p, size, prob, mu, lower.tail = TRUE, log.p = FALSE){
  stats::qnbinom(p, size, prob, mu, lower.tail, log.p) + size
}

#' @rdname NegBinomial2
#' @export
#'
rnbinom2 <- function(n, size, prob, mu){
  stats::rnbinom(n, size, prob, mu)
}


