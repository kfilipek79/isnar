% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/gamix.R
\name{gamix}
\alias{gamix}
\alias{gamix.default}
\alias{gamix.igraph}
\alias{gamix.table}
\title{Gupta-Anderson-May measure of within-group mixing}
\usage{
gamix(object, ...)

\method{gamix}{table}(object, debug = FALSE, ...)

\method{gamix}{igraph}(object, vattr, ...)

\method{gamix}{default}(object, ...)
}
\arguments{
\item{object}{R object, see Details for available methods}

\item{...}{other objects passed to/from other methods}

\item{debug}{logical, return some intermediate results as attributes to the
returned value}

\item{vattr}{character, name of vertex attribute}
}
\value{
Numerical value of the measure.
}
\description{
Measure of within-group mixing in networks proposed in Gupta, Anderson and
May (1989).
}
\details{
The measure varies between \code{-1/vcount(g)} for dissassortative mixing
and 1 for perfect within-group mixing. It takes a value of 0 for
proportionate mixing.

Method for mixing matrices

Method for igraphs
}
\examples{
gamix(Wnet, "gender")
gamix(EFnet, "type")
}
\references{
Gupta, S., Anderson, R., May, R. (1989) "Networks of sexual contacts:
implications for the pattern of spread of HIV", AIDS 3:807--817
}
\seealso{
Other segregation.measures: \code{\link{assort}},
  \code{\link{assort.default}},
  \code{\link{assort.igraph}}, \code{\link{assort.table}};
  \code{\link{coleman}}, \code{\link{coleman.default}},
  \code{\link{coleman.igraph}},
  \code{\link{coleman.table}}; \code{\link{ei}},
  \code{\link{ei.default}}, \code{\link{ei.igraph}},
  \code{\link{ei.table}}; \code{\link{freeman}},
  \code{\link{freeman.default}},
  \code{\link{freeman.igraph}},
  \code{\link{freeman.table}}; \code{\link{orwg}},
  \code{\link{orwg.default}}, \code{\link{orwg.igraph}},
  \code{\link{orwg.table}}; \code{\link{smi}},
  \code{\link{smi.default}}, \code{\link{smi.igraph}},
  \code{\link{smi.table}}; \code{\link{ssi}}
}

