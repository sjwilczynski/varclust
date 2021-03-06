% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.simulation.R
\name{data.simulation.factors}
\alias{data.simulation.factors}
\title{Simulates subspace clustering data with shared factors}
\usage{
data.simulation.factors(n = 100, SNR = 1, K = 10, numb.vars = 30,
  numb.factors = 10, min.dim = 1, max.dim = 2, equal.dims = TRUE,
  separation.parameter = 0.1)
}
\arguments{
\item{n}{An integer, number of individuals.}

\item{SNR}{A numeric or a vector of size K, signal to noise ratio measured as
variance of the variable, element of a subspace, to the variance of noise.
If a vector is passed it contains SNR for each cluster.}

\item{K}{An integer, number of subspaces.}

\item{numb.vars}{An integer, number of variables in each subspace.}

\item{numb.factors}{An integer, number of factors from which subspaces basis
will be drawn.}

\item{min.dim}{An integer, minimal dimension of subspace .}

\item{max.dim}{An integer, if equal.dims is TRUE then max.dim is dimension of
each subspace. If equal.dims is FALSE then subspaces dimensions are drawn 
from uniform distribution on [min.dim,max.dim].}

\item{equal.dims}{A boolean, if TRUE (value set by default) all clusters are 
of the same dimension.}

\item{separation.parameter}{a numeric, coefficients of variables in each 
subspace basis are drawn from range [separation.parameter,1]}
}
\value{
A list consisting of: \item{X}{matrix, generated data} 
  \item{signals}{matrix, data without noise} \item{factors}{matrix, columns
  of which span subspaces} \item{indices}{list of vectors, indices of factors
  that span subspaces} \item{dims}{vector, dimensions of subspaces} 
  \item{s}{vector, true partiton of variables}
}
\description{
Generating data for simulation with a low-rank subspace structure: variables
are clustered and each cluster has a low-rank representation. Factors that
span subspaces are shared between clusters.
}
\examples{
sim.data <- data.simulation.factors()
sim.data2 <- data.simulation.factors(n = 30, SNR = 2, K = 5, numb.vars = 20,
             numb.factors = 10, max.dim = 3, equal.dims = FALSE, separation.parameter = 0.2)
}
