

#' Checking if a package is installed
#' @aliases is.installed
#' @export
#' @param pkg a vector containing the names of the packages to be checked.
#' @return a data.frame with the information of the installed packages

is.installed <- function(pkg){
  `%notin%` <- Negate(`%in%`)
  installed <- utils::installed.packages()
  df <- data.frame(
    package = pkg,
    installed = pkg %notin% installed
  )
  return(df)
}

#' Installation of missing packages
#' @aliases install_missing_packages
#' @export
#' @param pkg a vector containing the names of the packages to be installed.
#' @return No return value, called for side effects

install_missing_packages <- function(pkg){
  `%notin%` <- Negate(`%in%`)
  installed <- utils::installed.packages()
  missing <- pkg[pkg %notin% installed]
  for(package in missing){
    utils::install.packages(package)
  }
}


#' Cleaning global environment and R search path
#' @aliases start_clean_session
#' @description This function cleans up the global environment and unload all packages loaded in a previous R session.
#' @export
#' @return No return value, called for side effects

start_clean_session <- function(){
  detach_all_packages <- function() {
    basic.packages.blank <- c(
      "stats",
      "graphics",
      "grDevices",
      "utils",
      "datasets",
      "methods",
      "base"
    )
    basic.packages <- paste("package:", basic.packages.blank, sep = "")
    package.list <- search()[ifelse(unlist(gregexpr("package:", search())) == 1, TRUE, FALSE)]
    package.list <- setdiff(package.list, basic.packages)
    if (length(package.list) > 0) {
      for (package in package.list) {
        detach(package, character.only = TRUE)
      }
    }
  }

  detach_all_packages()
  rm(list = ls(pos = 1), pos = 1 )
}


#' Cumulative distribution function
#' @aliases cdf
#' @export
#' @description This function plots the cumulative distribution function (c.d.f) of a random variable
#' @param x a numeric vector with the observed values of the random variable
#' @param Fx if NULL (default), then Fx is computed using one of the implemented distributions (see description of the dist argument below); otherwise the user must pass the values of Fx
#' @param type type of random variable; either discrete (default) or continuous; this argument is only necessary when Fx is passed by the user
#' @param dist optional; name of the distribution (currently the binomial, poisson and geometric distributions for discrete random variables, or uniform, exponential and normal distribution for continuous random variables)
#' @param ... further arguments passed to or from other methods
#' @return the desired plot of the cumulative distribution function
#'
#' @examples
#' \donttest{
#'
#' # binomial:
#' x <- 0:10
#' cdf(x, dist = "binom", size = 10, prob = 0.7)
#'
#' # normal:
#' x <- rnorm(100, mean = 10, sd = 2)
#' cdf(x, dist = "norm", mean = 10, sd = 2)
#' }

cdf <- function(x, Fx = NULL, type = c("discrete", "continuous"),
                dist = c("binom", "pois", "geom","unif", "exp", "norm"), ...){

  type <- match.arg(type)
  o <- order(x)
  x <- x[o]

  if(!is.null(Fx)){
    Fx <- Fx[o]
    test <- length(x) == length(Fx)
    if(isTRUE(test)){
      if(type ==  "discrete"){
        n2 <- length(x)
        n1 <- n2-1
        a <- abs(diff(x[1:2]))
        b <- abs(diff(x[n1:n2]))
        df <- data.frame(
          x = c(x[1] - a, x, x[n2] + b),
          Fx = c(0,Fx, 1)
        )
      }else{
        type <- "continuous"
        df <- data.frame(
          x = x,
          Fx = Fx
        )
      }
    }else{
      warning("x and Fx must be of the same length!")
    }
  }else{
    dist <- match.arg(dist)
    if(dist == "unif" | dist == "exp" | dist == "norm"){
      type <- "continuous"
    }
    if(dist == "binom"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = stats::pbinom(x, ...)
      )
    }else if(dist == "pois"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = stats::ppois(x, ...)
      )
    }else if(dist == "geom"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = stats::pgeom(x, ...)
      )
    }else if(dist == "unif"){
      df <- data.frame(
        x = x,
        Fx = stats::punif(x, ...)
      )
    }else if(dist == "exp"){
      df <- data.frame(
        x = x,
        Fx = stats::pexp(x, ...)
      )
    }else{
      df <- data.frame(
        x = x,
        Fx = stats::pnorm(x, ...)
      )
    }
  }



  if(type == "discrete"){
    ggplot(df, aes(x=x, y = Fx)) +
      geom_point() +
      geom_step() +
      labs(x = "x", y = "F(x)")
  }else{
    ggplot(df, aes(x=x, y = Fx)) +
      geom_line() +
      labs(x = "x", y = "F(x)")
  }
}



