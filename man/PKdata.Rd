\name{PKdata}
\alias{PKdata}

\title{ Data input }
\description{
  This function is to read data, match default naming system to data variables, and
  setup global variables.
}
\usage{
PKdata(data, match.term=NULL)
}

\arguments{
  \item{data}{ a data frame to analyze. }
  \item{match.term}{a list. It matches the package metrics to the variable names in the data.}


  
}

\details{ Please see vignettes for details.

}

\author{Xiaoyong Sun}

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
\keyword{ methods}

