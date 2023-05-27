

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





