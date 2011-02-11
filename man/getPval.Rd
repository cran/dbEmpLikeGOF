\name{getPval}
\alias{getPval}
\title{Internal Function for getPval}
\description{internal function not called by user}
\usage{
getPval(testcall,
        teststat,
        x,
        y,
        vrb=TRUE)
}
\arguments{
  \item{testcall}{Type of distribution: either uniform,normal, or
    distribution.equality}
  \item{teststat}{value to compare}
  \item{x}{vector of values to test}
  \item{y}{vector of values to test if comparing two distributions to
    each other}
  \item{vrb}{logical indicating if status messages should be printed}
}   
\details{
  This function is used in the db.emplike.gof function to estimate
  pvalues from data table.
}
\value{Returns a pvalue}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\keyword{internal}
