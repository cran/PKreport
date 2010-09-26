\name{nonmem-class}
\Rdversion{1.1}
\docType{class}
\alias{nonmem-class}
\alias{initialize,nonmem-method}

\alias{non.lst, nonmem-method}
\alias{non.lst}
\alias{non.lst.meth, nonmem-method}
\alias{non.lst.meth}
\alias{non.term, nonmem-method}
\alias{non.lst.term}
\alias{non.lst.objt, nonmem-method}
\alias{non.lst.objt}
\alias{non.lst.objv, nonmem-method}
\alias{non.lst.objv}
\alias{non.lst.objs, nonmem-method}
\alias{non.lst.objs}
\alias{non.tab, nonmem-method}
\alias{non.tab}
\alias{non.cov, nonmem-method}
\alias{non.cov}
\alias{non.cor, nonmem-method}
\alias{non.cor}
\alias{non.coi, nonmem-method}
\alias{non.coi}
\alias{non.phi, nonmem-method}
\alias{non.phi}
\alias{non.select, nonmem-method}
\alias{non.select}

\title{Class nonmem: contain and describe all nonmem output}
\description{This is a class representation for nonmem output.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("nonmem", output.lst, output.tab, output.dir, delim, ...)}.

This creates a nonmem object containing all nonmem output.
}
\section{Slots}{
	 \describe{
    \item{\code{file.cov}:}{Object of class \code{"list"}. This list includes title (character) and data (data.frame)
      for cov file.}
    \item{\code{file.cor}:}{Object of class \code{"list"} . This list includes title (character) and data (data.frame)
      for cor file.}
    \item{\code{file.coi}:}{Object of class \code{"list"}. This list includes title (character) and data (data.frame)
      for coi file.}
    \item{\code{file.phi}:}{Object of class \code{"list"}. This list includes title (character) and data (data.frame)
      for phi file.}
    \item{\code{file.lst}:}{Object of class \code{"character"}. This character vector contains the information
      from NONMEM lst file.}
    \item{\code{method}:}{Object of class \code{"character"}. This character vector matches
      \#METH tag in lst file and contains the estimation method.}
    \item{\code{analysis}:}{Object of class \code{"list"} . This list matches
      text between \#TERM tag and \#TERE tag in lst file and contains the analysis information.}
    \item{\code{objt}:}{Object of class \code{"character"}. This character vector matches
      \#OBJT tag in lst file and describes the objective function.}
    \item{\code{objv}:}{Object of class \code{"character"}. This character vector matches
      \#OBJV tag in lst file and describes the objective function value.}
    \item{\code{objs}:}{Object of class \code{"character"}. This character vector matches
      \#OBJT tag in lst file and describes the objective function standard deviation.}
    \item{\code{tabid}:}{Object of class \code{"character"}. This character vector is from
      the first line of tab file and describes the title of tab file.}
    \item{\code{tabdata}:}{Object of class \code{"data.frame"}. This data frame matches
      data in tab file and describes the title of tab file.}
  }
}
\section{Methods}{
  \bold{Class-specific methods}   
  \describe{
    \item{\code{non.lst(nonmem)}:}{Access lst content in the \code{file.lst} slot.}
    \item{\code{non.lst.meth(nonmem)}:}{Access method section (\#meth tag) in the \code{file.lst} slot.}
    \item{\code{non.lst.term(nonmem)}:}{Access analysis section (\#TERM, \#TERE tag) in the \code{file.lst} slot.}        
    \item{\code{non.lst.objt(nonmem)}:}{Access objective function (\#OBJT tag) in the \code{file.lst} slot.}        
    \item{\code{non.lst.objv(nonmem)}:}{Access objective function value (\#OBJV tag) in the \code{file.lst} slot.}        
    \item{\code{non.lst.objs(nonmem)}:}{Access objective function standard deviation (\#OBJS tag) in the \code{file.lst} slot.}        
    \item{\code{non.tab(nonmem)}:}{Access tab content in the \code{file.tab} slot.}        
    \item{\code{non.cov(nonmem)}:}{Access cov content in the \code{file.cov} slot.}        
    \item{\code{non.cor(nonmem)}:}{Access cor content in the \code{file.cor} slot.} 
    \item{\code{non.coi(nonmem)}:}{Access coi content in the \code{file.coi} slot.}     
    \item{\code{non.phi(nonmem)}:}{Access phi content in the \code{file.phi} slot.}                
    \item{\code{non.select(nonmem, lines, sep)}:}{Select the lines in the lst file.}                
	 }
 
  \bold{Standard generic methods}   
  \describe{
    \item{\code{initialize(object, output.lst, output.tab, output.dir)}:}{Object instantiation.
    output.lst: the file name for lst file from NONMEM; output.tab: the filename for tab file from NONMEM;
    output.dir(optional): the output directory for NONMEM including cor, cov, coi and phi files.

    nonmem instances are created through \code{new("nonmem", ...)}.
    The arguments to \code{new} should include output.lst and output.tab.
    If output.dir is missing, NULL will be assigned to proper slots.}     
    }
 
}

\author{ Xiaoyong Sun }

\examples{
showClass("nonmem")
}
\keyword{classes}
