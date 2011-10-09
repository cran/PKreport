\name{PKfigure}
\alias{PKfigure}

\title{ Diagnose model and generate figures }
\description{
  This function is for diagnosing specific models and generate figures.
}
\usage{
PKfigure(pdata, methods, clean)
}


\arguments{
  \item{pdata}{a data frame to analyze. Generally it is from tab file generated from NONMEM.}
  \item{methods}{a numeric vector. It includes all diagnostics methods according to Census,
 1: Exploratory data analysis; 2: Individual plots; 3: Goodness-of-fit plots;
4: Structural model diagnostics;  5: Residual model diagnostics;  6: Parameters diagnostics;
7: Covariate model;  8: Random effects.}
  \item{clean}{a logical value indicating whether or not to keep results from previous
  PKreport for final report.}



}

\details{ Please see vignettes for details.

}

\author{Xiaoyong Sun}

\examples{
# PKfigure(pdata, c(3,6,8))
}
\keyword{ methods}

