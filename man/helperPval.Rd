\name{helperPval}
\alias{helperPval}
\title{Internal Function for getPval}
\description{internal function not called by user}
\usage{
helperPval(rowdx,
        colvls,
        teststat,
        testmat)
}
\arguments{
  \item{rowdx}{index in colvls to examine}
  \item{colvls}{vector of values}
  \item{teststat}{value to compare to colvls}
  \item{testmat}{original matrix of values}
}
\details{  
  This function is used in the getPval function to estimate pvalues from
  data table.
}
\value{Returns a pvalue}
\note{internal function not called by user}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\keyword{internal}
