\name{testfun5}
\alias{testfun5}
\title{Internal Function for mapply}
\description{internal function not called by user}
\usage{
testfun5(x,
         y,
         j,
         m,
         i)
}
\arguments{
  \item{x}{vector of values to test}
  \item{y}{vector of values to test}
  \item{j}{vector to loop over 1 to sample size}
  \item{m}{value to loop over 1 to acceptable value}
  \item{i}{either 1 or 2}
}
\details{  
  This function is used in a mapply within the db.emplike.gof
  function. It calls a mapply on equation2.10.Utilized when
  testcall is distribution.equality
}
\value{Returns a vector of values}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\keyword{internal}
