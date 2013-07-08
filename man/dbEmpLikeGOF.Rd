\name{dbEmpLikeGOF}
\alias{dbEmpLikeGOF}
\title{Density Based Empirical Likelihood Goodness of Fit}
\description{Performs density based empirical likelihood goodness of fit
tests for normality, uniformity, and distribution equality.}
\usage{

dbEmpLikeGOF(x,
             y=NA,
             testcall=c("uniform", "normal"),
             delta=0.50,
             delta.equality=0.10,
             num.mc=1000,
             pvl.Table=TRUE,
             vrb=TRUE,
             random.seed.flag=TRUE)
}
\arguments{
  \item{x}{vector of data values}
  \item{y}{an optional vector of data values when testing for
    distribution equality}
  \item{testcall}{Type of distribution: either uniform or normal}
  \item{delta}{an option for changing the minimizing range for the EL
    ratio test statistic for the normal and uniform distribution.}
  \item{delta.equality}{an option for changing the minimizing range for
    the EL ratio test statistic for the two sample distribution equality.}
  \item{num.mc}{number of simulations to use when calculating p-value}
  \item{pvl.Table}{logical indicating if p-value should be calculated
    based on estimates from stored data tables or by using Monte Carlo
    techniques}
  \item{vrb}{logical indicating if status messages should be printed}
  \item{random.seed.flag}{logical if set seed should be set}

}
\details{The method employs a density-based empirical likelihood approach to obtain
  test statistic and p-values for a goodness-of-fit tests for uniformity,
  normality, and two sample distribution equality.

  If both 'x' and 'y' are specified then a two sample distribution is
  performed to evaluate the null hypothesis of equal distributions.

  If only 'x' is specified, then the 'testcall' option must be specified as
  either 'uniform' (uniform) or 'normal' (normal) denoting whether the
  distribution of the 'x' vector of observations should be tested
  against the normal or uniform distribution.
  
  The 'delta' value should remain at the default value of 0.50.  The 'delta' 
  value corresponds to the delta in equation 2.10 (normal) or equation
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
  

  The 'pvl.Table' is a binary option where when TRUE, the p-value for the
  test statistic is determined by imputation from a stored table of
  test statistics and significance levels for common sample sizes.  If
  'pvl.Table' is FALSE, then the p-value is determined from Monte-Carlo
  simulations where the number of resamplings is set by 'num.mc'.  
  
}
\value{
  Returns a vector of length 2 with test statistic and p-value.
  \item{teststat}{the value of the test statistic}
  \item{pvalue}{the p-value for the test}
}
\references{
  Vexler A, Gurevich G, Empirical likelihood ratios applied to
  goodness-of-fit tests based on sample entropy.  Computational
  Statistics and Data Analysis 54(2010) 531-545.

  Gurevich G, Vexler A, A two-sample empirical likelihood ratio test
  based on samples entropy.  Statistics and Computing, 2011.
}
\author{Jeffrey C. Miecznikowski, Lori A. Shepherd}
\examples{

 x <- rnorm(100)
 testNorm <- dbEmpLikeGOF(x, testcall="normal")
 testUni <- dbEmpLikeGOF(x, testcall="uniform")
 testNorm
 testUni
 y=rnorm(40)
 testDist <- dbEmpLikeGOF(x,y)
 testDist

}
\keyword{methods}
