\name{testfun2}
\alias{testfun2}
\title{Internal Function for mapply}
\description{internal function not called by user}
\usage{
testfun2(iter,
         sample.size,
         testcall,
         delta=.5,
         delta.equality=.1,
         random.seed.flag=FALSE)
}
\arguments{
  \item{iter}{iteration value for mapply}
  \item{sample.size}{number of observations}
  \item{testcall}{Type of distribution: either uniform,normal, or
    distribution.equality}
  \item{delta}{delta value when normal or uniform is used}
  \item{delta.equality}{delta when distribution equality is used}
  \item{random.seed.flag}{logical if set seed should be used. uses value
  of iteration as seed}
}
\details{
  This function is used in a mapply within the return.cutoff
  function. sample.size may be of length two for testcall is
  distribution.equality for comparing two varying length sequences.
}
\value{Returns a log value}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\seealso{\code{\link{returnCutoff}}}
\keyword{internal}
