### R code from vignette source 'dbEmpLikeGOF.Rnw'

###################################################
### code chunk number 1: dbEmpLikeGOF.Rnw:72-77
###################################################

library(dbEmpLikeGOF)
normData = rnorm(25)
dbEmpLikeGOF(x=normData, testcall="normal", pvl.Table=FALSE)



###################################################
### code chunk number 2: dbEmpLikeGOF.Rnw:85-88
###################################################

dbEmpLikeGOF(x=normData, testcall="normal", pvl.Table=TRUE)



###################################################
### code chunk number 3: dbEmpLikeGOF.Rnw:94-101
###################################################

unifData = runif(30)
# calculates pvalue based on Monte-Carlo methods
dbEmpLikeGOF(x=unifData, testcall="uniform", pvl.Table=FALSE)
# estimates pvalue based on tables
dbEmpLikeGOF(x=unifData, testcall="uniform", pvl.Table=TRUE)



###################################################
### code chunk number 4: dbEmpLikeGOF.Rnw:107-110
###################################################

dbEmpLikeGOF(x=unifData, testcall="normal", pvl.Table=TRUE)



###################################################
### code chunk number 5: dbEmpLikeGOF.Rnw:118-124
###################################################

dbEmpLikeGOF(x=unifData, y=normData, pvl.Table=TRUE)

normDataSet2 = rnorm(40)
dbEmpLikeGOF(x=normDataSet2, y=normData, pvl.Table=TRUE)



