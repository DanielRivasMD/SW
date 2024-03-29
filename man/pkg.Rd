% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkg.R
\name{lsMethods}
\alias{lsMethods}
\alias{lsPkg}
\title{Check for Package contents}
\usage{
lsMethods(obj)

lsPkg(pkg, all_names = FALSE, pattern)
}
\arguments{
\item{obj}{Object to inquiry about}

\item{pkg}{Package name}

\item{all_names}{Boolean. Default = FALSE}

\item{pattern}{Specify if a pattern is to be searched}
}
\value{
Object's methods

Package contents
}
\description{
\code{lsMethods}     List object methods
}
\examples{
lsMethods(1:1000)

lsPkg(stats)

}
