\name{distEqInternal}
\alias{distEqInternal}
\title{Internal Function for mapply}
\description{internal function not called by user}
\usage{
distEqInternal(x,
                 y,
                 delta.equality=0.10)

}
\arguments{
\item{x}{vector of values to test}
\item{y}{vector of values to test and compare to x}
\item{delta.equality}{delta value}
}
\details{
  This function computes the test statistic just as the db.emplike.gof
  function. This function however does not compute a pvalue for the
  test statistic. This function is used in internal mapply's in the
  return.cutoff function, where only the test statistic is needed. It
  was deisgned to help with efficiency. 
}
\value{
  returns test statistic.
}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\keyword{internal}
