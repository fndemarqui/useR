
#' Coefficient of Variation
#' @aliases cv
#' @export
#' @description This function computes the coefficient of variation of the values in x. If na.rm is TRUE then missing values are removed before computation proceeds.
#' @param x a numeric vector or an R object but not a factor coercible to numeric by as.double(x).
#' @param percentual logical; if TRUE (default), the coefficient of variation is returned in %.
#' @param ... further arguments passed to or from other methods.
#' @return the coefficient of variation

cv <- function(x, percentual = TRUE, ...){
  if(is.numeric(x)){
    cv <- sd(x, ...)/mean(x, ...)
  }else{
    warning("Somente vetores atômicos numéricos são permitidos")
    cv <- NULL
  }
  if(isTRUE(percentual)){
    cv <- 100*cv
  }
  return(cv)
}
