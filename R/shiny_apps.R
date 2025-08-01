

#' Function to run shiny apps
#'
#' @aliases run_app
#' @export
#' @param app name of the app
#' @description This functions is used to run shiny apps implemented in the package.
#'
run_app <- function(app = "tcl_prop"){
  app <- match.arg(app)
  switch (app,
          "tcl_prop" = app_tcl_prop()
  )
}
