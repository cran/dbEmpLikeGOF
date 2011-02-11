\name{getCutoff}
\alias{getCutoff}
\title{Internal Function for getCutoff}
\description{internal function not called by user}
\usage{
getCutoff(testcall,
        smp.size,
        targetalpha
       )
}
\arguments{
  \item{testcall}{Type of distribution: either uniform,normal, or
    distribution.equality}
  \item{smp.size}{numeric vector indicating sample.size}
  \item{targetalpha}{numeric indication of desired alpha}
}   
\details{
  This function is used in the returnCutoff function to estimate
  cutoff values from data table.
}
\value{Returns a cutoff value}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\keyword{internal}
