

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



#' ENEM 2019 em Belo Horizonte
#'
#' @name enem2019bh
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Conjunto de dados com diversas variáveis relativas à prova do ENEM aplicada em 2019 na cidade de Belo Horizonte.
#'
#' @format Tibble com 87365 linhas e 14 variáveis:
#' \describe{
#'   \item{idade}{em anos}
#'   \item{sexo}{F - feminino, M - masculino}
#'   \item{est_civil}{estado civil: NI (não informado), solteiro, divorciado, casado ou viúvo}
#'   \item{raca}{branco, pardo, negro, amarelo, indígina ou ND (não determinado)}
#'   \item{escola}{escola de origem: não respondeu, pública, privada ou exterior}
#'   \item{lingua_estr}{lingua da prova de lingua estrangeira: 0 - inglês, 1 espanhol}
#'   \item{nota_CN}{nota obtida na prova de ciências naturais}
#'   \item{nota_CH}{nota obtida na prova de ciências humanas}
#'   \item{nota_LC}{nota obtida na prova de linguas e códigos}
#'   \item{nota_MT}{nota obtida na prova de matemática}
#'   \item{nota_RD}{nota obtida na prova de redação}
#'   \item{ESC_pai}{pai possui ensino superior completo? não sabe, sim, não}
#'   \item{ESC_mae}{mae possui ensino superior completo? não sabe, sim, não}
#'   \item{renda_fam}{renda familiar mensal: A - nenhuma renda; B - até R$ 998,00; C - R$ 998,01 até R$ 1.497,00; D - R$ 1.497,01 até R$ 1.996,00; E - R$ 1.996,01 até R$ 2.495,00; F - R$ 2.495,01 até R$ 2.994,00; G - R$ 2.994,01 até R$ 3.992,00; H - R$ 3.992,01 até R$ 4.990,00; I - R$ 4.990,01 até R$ 5.988,00; J - R$ 5.988,01 até R$ 6.986,00; K - R$ 6.986,01 até R$ 7.984,00; L - R$ 7.984,01 até R$ 8.982,00; M - R$ 8.982,01 até R$ 9.980,00; N - R$ 9.980,01 até R$ 11.976,00; O - R$ 11.976,01 até R$ 14.970,00; P - R$ 14.970,01 até R$ 19.960,00; Q - mais de R$ 19.960,00.}
#' }

#' @source Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira (https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados).
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

