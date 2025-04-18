% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/posterior_utils.R
\name{summarySBM}
\alias{summarySBM}
\title{Function for summarizing the sampled cluster allocation vectors}
\usage{
summarySBM(bgm_object, internal_call = FALSE)
}
\arguments{
\item{bgm_object}{A fit object created by the bgm function.}

\item{internal_call}{A logical value indicating whether the function is used
within bgms for calculating the posterior probabilities of the number of
clusters or by the user. This argument is always set to FALSE.}
}
\value{
Returns a list of two elements: \code{components} and \code{allocations},
containing the posterior probabilities for the number of components (clusters)
and the estimated cluster allocation of the nodes using Dahl's method.
}
\description{
Th \code{summarySBM} function summarizes the sampled allocation vectors from
each iteration of the Gibbs sampler from the output of the  \code{bgm}
function ran with \code{edge_prior = "Stochastic-Block"} and
\code{save = TRUE}. It also estimates the posterior distribution of the
number of clusters.
}
\examples{
\donttest{
  # fit a model with the SBM prior
  bgm_object = bgm(
    Wenchuan[, c(1:5)],
    edge_prior = "Stochastic-Block",
    save = TRUE)

  summarySBM(bgm_object)
}
}
