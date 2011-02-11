\name{testmat}
\docType{data}
\alias{unifCut}
\alias{normCut}
\alias{distEqCut}
\alias{testmat}

\title{Pvalue Data Tables}

\description{
  Stores cutoff information for different target alpha values and
  various sets of data of varying sample size. 
}

\format{
  data.frame with columns equal to sample size information
  and rows equal to different target alpha values.
}

\details{
  This file contains cutoff information for different target alpha values and
  various sets of data of varying sample size. normCut for normal
  distribution, unifCut for uniform distribution, and distEqCut for two
  vectors compared to each other.
  These tables are generated for sample sizes 10, 25, 50, 75, 100, 150,
  200, 250, 500, 1000, 2000, 5000, and 10000. The target alphas range
  from .001 to .999 in increments of .001. The delta for normal and
  uniform is 0.5 and for distribution equality 0.1. 
}

\note{
  This dataset is used within the getPval function. There is no
  need for the user to ever call this dataset.
}

\keyword{datasets}





