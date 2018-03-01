
#' Consumer preference mapping of carrots
#'
#' In a consumer study 103 consumers scored their preference of 12 danish
#' carrot types on a scale from 1 to 7. Moreover the consumers scored the
#' degree of sweetness, bitterness and crispiness in the products.
#'
#' The carrots were harvested in autumn 1996 and tested in march 1997. In
#' addition to the consumer survey, the carrot products were evaluated by
#' a trained panel of tasters, the sensory panel, with respect to a
#' number of sensory (taste, odour and texture) properties. Since usually
#' a high number of (correlated) properties (variables) are used, in this
#' case 14, it is a common procedure to use a few, often 2, combined
#' variables that contain as much of the information in the sensory
#' variables as possible. This is achieved by extracting the first two
#' principal components in a principal components analysis (PCA) on the
#' product-by-property panel average data matrix. In this data set the
#' variables for the first two principal components are named
#' (\code{sens1} and \code{sens2}).
#'
#' @docType data
#'
#' @usage data(carrots)
#'
#' @format
#' \describe{
#' \item{Consumer}{factor with 103 levels: numbering identifying consumers.}
#' \item{Frequency}{factor with 5 levels; "How often do you eat carrots?"
#' 1: once a week or more, 2: once
#' every two weeks, 3: once every three weeks, 4: at least once month,
#' 5: less than once a month.}
#' \item{Gender}{factor with 2 levels. 1: male, 2:female.}
#' \item{Age}{factor with 4 levels. 1: less than 25 years, 2: 26-40 years,
#' 3: 41-60 years, 4 more than 61 years.}
#' \item{Homesize}{factor with two levels. Number of persons in the household.
#' 1: 1 or 2 persons, 2: 3 or more persons.}
#' \item{Work}{factor with 7 levels. different types of employment.
#' 1: unskilled worker(no education),
#' 2: skilled worker(with education), 3: office worker, 4: housewife (or man),
#' 5: independent
#' businessman/ self-employment, 6: student, 7: retired}
#' \item{Income}{factor with 4 levels. 1: <150000, 2: 150000-300000,
#' 3: 300000-500000, 4: >500000}
#' \item{Preference}{consumer score on a seven-point scale.}
#' \item{Sweetness}{consumer score on a seven-point scale.}
#' \item{Bitterness}{consumer score on a seven-point scale.}
#' \item{Crispness}{consumer score on a seven-point scale.}
#' \item{sens1}{first sensory variable derived from a PCA.}
#' \item{sens2}{second sensory variable derived from a PCA.}
#' \item{Product}{factor on 12 levels.}
#' }
#'
#' @keywords datasets
#' @source Per Bruun Brockhoff, The Royal Veterinary and Agricultural University,
#' Denmark.
#'
#' @examples
#'
#' fm <- lmer(Preference ~ sens2 + Homesize + (1 + sens2 | Consumer), data=carrots)
#' anova(fm)
#'
"carrots"