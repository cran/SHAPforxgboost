% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SHAP_funcs.R
\name{shap.importance}
\alias{shap.importance}
\title{Variable importance as measured by mean absolute SHAP value.}
\usage{
shap.importance(data_long, names_only = FALSE, top_n = Inf)
}
\arguments{
\item{data_long}{a long format data of SHAP values from
\code{\link{shap.prep}}}

\item{names_only}{If \code{TRUE}, returns variable names only.}

\item{top_n}{How many variables to be returned?}
}
\value{
returns \code{data.table} with average absolute SHAP
values per variable, sorted in decreasing order of importance.
}
\description{
Variable importance as measured by mean absolute SHAP value.
}
\examples{

shap.importance(shap_long_iris)

shap.importance(shap_long_iris, names_only = 1)

}
