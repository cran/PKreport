\name{PKreport-package}
\alias{PKreport-package}
\alias{PKreport}
\docType{package}
\title{
An automatically pipeline for population pharmacokinetic models
}
\description{
This package provides an automatically pipeline, an R package called PKreport,
for population pharmacokinetic models to test model assumptions,
visualize data and diagnose models.
}
\details{
\tabular{ll}{
Package: \tab PKreport\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-06-28\cr
License: \tab GNU license \cr
}

}
\author{
Xiaoyong Sun
Maintainer: johnsunx1<johnsunx1@gmail.com>
}

\keyword{ package }

\examples{
# setup configuration
general.list <- list(save.format="bmp", width = 480, height = 480, package=2)
hist.list <- list(type=c("count"), layout=c(1,1), ind.layout=c(5,5))
scatter.list <- list(span=0.25, type=c("p", "smooth"), layout=c(1,1), ind.layout=c(5,5))

var.name <- list(ID="ID", DV="CONC", TIME="TIME", PRED="PRED", RES="RES",
WRES="WRES",IPRE="IPRE", IDV=c("CLCR", "WT"), COV=c("WT", "AGE"),
ETA=c("ETA1", "ETA2"), PARA=c("CL", "V"))

data(pdata)
# PKdata(data=pdata, match.term=var.name)

# PKconfig(general.list, hist.list, scatter.list)
# PKfigure(pdata, 1)
# PKshow()
# PKclean()

}
