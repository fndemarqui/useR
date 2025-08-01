

#' Testes de estrada de carros
#'
#' @name carros
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Este conjunto de dados contém um subconjunto dos dados referente à economia de combustível que a Agência de Proteção do Meio Ambiente (APMA) dos EUA disponibiliza em http://fueleconomy.gov. O conjunto de dados contém apenas modelos que tiveram um novo lançamento a cada ano entre 1999 e 2008 - isso foi usado como um proxy para a popularidade do carro.
#'
#' @format Data frame com 234 linhas e 11 variáveis:
#' \describe{
#'   \item{montadora}{nome da montadora}
#'   \item{modelo}{nome do modelo}
#'   \item{cilindrada}{cilindrada do motor, em litros}
#'   \item{ano}{ano de fabricação}
#'   \item{cilindros}{número de cilindros}
#'   \item{transmicao}{tipo de transmição}
#'   \item{tracao}{tipo de tracao}
#'   \item{urb}{consumo urbano, em milhas por galão}
#'   \item{rod}{consumo rodoviário, em milhas por galão}
#'   \item{combustível}{tipo de combustível}
#'   \item{categoria}{categoria do carro}
#' }

#' @source R package ggplot2.
#' @references  Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.
#'
NULL


#' Hábito nutricional de um grupo de estudantes.
#'
#' @name nutricao
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Um grupo de alunos do curso de nutrição da UFF responderam um questionário sobre seus hábitos alimentares em um trabalho de classe passado pelo professor de estatística.
#'

#' @format Data.frame com 44 linhas e 9 variáveis:
#' \describe{
#'   \item{sexo}{M - masculino; F - feminino}
#'   \item{idade}{idade em anos}
#'   \item{peso}{peso em quilos}
#'   \item{altura}{altura e metros}
#'   \item{alimentação}{possui uma alimentação saudável? (sim; não)}
#'   \item{frutas}{número médio porções de frutas consumidas por dia}
#'   \item{vegetais}{número médio de porções de vegetais consumidas por dia}
#'   \item{sedentarismo}{leva uma vida sedentária? (sim; não)}
#'   \item{tempo}{tempo médio (em horas) semanal dedicado à prática de atividades físicas: até duas horas, entre 2 e 5 horas, entre 5 e 10 horas, mais de 10 horas}
#' }
#'
NULL


#' Resistência à compressão.
#'
#' @name resistencia
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Exemplo 6.4 do livro \insertCite{2015Montgomery}{est031}. Dados referentes à resistência à compressão (em psi) de 80 corpos de prova de liga de alumínio-lítio.
#'
#' @format Data.frame com 80 linhas e uma variável:
#' \describe{
#'   \item{resistência}{resistência à compressão (em psi) de 80 corpos de prova de liga de alumínio-lítio.}
#' }
#' @references
#'
#' \insertRef{2015Montgomery}{est031}
#'
NULL

