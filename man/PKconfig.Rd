\name{PKconfig}
\alias{PKconfig}

\title{ Data configuration }
\description{
  This function is to configure data for analysis.
}
\usage{
PKconfig(general.list, hist.list, scatter.list)
}

\arguments{
  \item{general.list}{ a list. It includes figure configuration: save.format, width, height, and
                      also graphic packages (0: use only lattice package. 1: use only ggplot2 package.
                      2: use both packages.}
  \item{hist.list}{ a list. It includes histogram configuration: type, layout, ind.layout (for
                  individual plots).}
  \item{scatter.list}{a list. It includes scatterplot configuration: type, layout, span, ind.layout (for
                  individual plots).}
  
}

\details{ Please see vignettes for details.

}

\author{Xiaoyong Sun}

\examples{
# setup configuration
general.list <- list(save.format="bmp", width = 480, height = 480, package=2)
hist.list <- list(type=c("count"), layout=c(1,1), ind.layout=c(5,5))
scatter.list <- list(span=0.25, type=c("p", "smooth"), layout=c(1,1), ind.layout=c(5,5))

PKconfig(general.list, hist.list, scatter.list)
}


\keyword{ methods}

