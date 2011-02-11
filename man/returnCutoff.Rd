\name{returnCutoff}
\alias{returnCutoff}
\title{Estimates the statistic cutoff for a target alpha}
\description{estimates the test statistic cutoff for significance}
\usage{
returnCutoff(sample.size,
              testcall=c("uniform", "normal", "distribution.equality"),
              targetalpha=.05,
              num.mc=200,
              delta=0.5,
              delta.equality=0.10,
              pvl.Table=FALSE)
}
\arguments{
  \item{sample.size}{number of observations}
  \item{testcall}{Type of distribution: either uniform, normal, or
    distribution.equality}
  \item{targetalpha}{The significance level for the test.}
  \item{num.mc}{number of simulations to estimate distribution of statistic}
  \item{delta}{an option for changing the minimizing range for the EL
    ratio test statistic for the normal and uniform distribution.}
  \item{delta.equality}{an option for changing the minimizing range for
    the EL ratio test statistic for the two sample distribution equality}
  \item{pvl.Table}{logical indicating if value should be calculated
    based on estimates from data table or by using monte carlo
    techniques}
}
\details{

  This function is designed to return the cut-off for significance for
  the statistics obtained from the density-based EL tests described in
  Vexler and Gurevich, 2010 and Gurevich and Vexler, 2011.  The
  significance level for the associated 
  cutoffs are specified by the user in 'targetalpha'.  
  
  Note 'sample.size' should be a scalar for the normal
  and uniform tests, but a vector of length two for
  'testcall=distribution.equality' denoting the number of observations
  for each sample.

  The 'delta' value should remain at the default value of 0.50.  The 'delta' 
  value corresponds to the 'delta' in equation 2.10 (normal) or equation
  2.3.2 (uniform) in Vexler and Gurevich, 2010.  Essentially this setting
  controls the range over which a minimum is taken to produce the EL ratio
  test statistic  The range is from 1 to n^(1-'delta') where 'n'
  represents the number of observations in 'x'.
  
  The 'delta.equality' option specifies the range over which a minimum is
  taken to produce the EL ratio test statistic for the two sample
  distribution equality test.  The lower endpoint in the range is
  n^(0.5+delta) and upper endpoint is min(n^(1-delta),n/2) where 'n'
  corresponds to the number of observations.  Acceptable delta values are
  in the interval (0,0.25).From our experiences, the two sample
  distribution test is rather robust to the choice of 'delta.equality'.
  
  
  The 'pvl.Table' is a binary option where when TRUE, the 
  test statistic is determined by imputation from a stored table of
  test statistics and significance levels for common sample sizes.  If
  'pvl.Table' is FALSE, then the test statistic is determined from a Monte-Carlo
  simulation where the number of resamplings is controlled by 'num.mc'.  
  
}
\value{Returns a statistical cutoff value to assess significance at
  level 'targetalpha'}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\examples{

 returnCutoff(sample.size=50, testcall="normal")
 returnCutoff(sample.size=50, testcall="uniform")
 returnCutoff(sample.size=10, testcall="distribution.equality")
 returnCutoff(sample.size=c(10,15), testcall="distribution.equality")

}
\keyword{methods}
