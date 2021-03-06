% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/Main.R
\name{kappaCohen}
\alias{kappaCohen}
\title{kappaCohen}
\usage{
kappaCohen(actuals, predictedScores, threshold = 0.5)
}
\arguments{
\item{actuals}{The actual binary flags for the response variable. It can take a numeric vector containing values of either 1 or 0, where 1 represents the 'Good' or 'Events' while 0 represents 'Bad' or 'Non-Events'.}

\item{predictedScores}{The prediction probability scores for each observation. If your classification model gives the 1/0 predcitions, convert it to a numeric vector of 1's and 0's.}

\item{threshold}{If predicted value is above the threshold, it will be considered as an event (1), else it will be a non-event (0). Defaults to 0.5.}
}
\value{
The Cohen's kappa of the given actuals and predicted probability scores
}
\description{
Calculate the Cohen's kappa statistic for a given logit model.
}
\details{
For a given actuals and predicted probability scores, Cohen's kappa is calculated. Cohen's kappa is calculated as (probabiliity of agreement - probability of expected) / (1-(probability of expected)))
}
\examples{
data('ActualsAndScores')
kappaCohen(actuals=ActualsAndScores$Actuals, predictedScores=ActualsAndScores$PredictedScores)
}
\author{
Selva Prabhakaran \email{selva86@gmail.com}
}

