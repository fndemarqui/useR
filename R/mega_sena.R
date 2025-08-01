

#' Resultados da mega-sena
#' @aliases download_megasena
#' @export
#' @param resultado tipo de resultado desejado (dezenas sorteadas ou número de número de ganhadores da sena, quina e quadra)
#' @return tibble/data.frame com os resultados da mega-sena.

download_megasena <- function(resultado = c("dezenas", "ganhadores")){
  resultado <- tolower(resultado)
  mr <- match.arg(resultado)

  url <- switch(mr,
                dezenas = "https://github.com/fndemarqui/megasena/blob/main/data/dezenas.rds?raw=true",
                ganhadores = "https://github.com/fndemarqui/megasena/blob/main/data/ganhadores.rds?raw=true"
         )

  data <- readRDS(url(url))
  return(data)
}

