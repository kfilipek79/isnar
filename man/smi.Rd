% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/smi.R
\name{smi}
\alias{smi}
\alias{smi.default}
\alias{smi.igraph}
\alias{smi.table}
\title{Segregation Matrix Index}
\usage{
smi(object, ...)

\method{smi}{table}(object, normalize = TRUE, ...)

\method{smi}{igraph}(object, vattr, ...)

\method{smi}{default}(object, ...)
}
\arguments{
\item{object}{R object, see Details for available methods}

\item{...}{other arguments passed to/from other methods}

\item{normalize}{logical, whether normalized values should be returned,
defaults to \code{TRUE}}

\item{vattr}{character, name of the node attribute designating groups}
}
\value{
Numeric vector of length equal to the number of groups in \code{g} according
to \code{vattr} with the values of SMI for the groups.
}
\description{
Segregation Matrix Index due to Freshtman (1997). A measure of network
segregation.  Currently (and originally) supports only two groups.
}
\details{
The Segregation Matrix Index (SMI) is calculated for every group separately.
It compares the density within group to the density of between group ties of
nodes belonging to that group.

Non-normalized version is the ratio of the within-group density to the
between-group density, so vary between 0 and infinity. The normalized
version varies between 0 and 1.

Method for mixing matrices.

Method for igraphs
}
\examples{
data(Wnet)
smi( as.directed(Wnet, "mutual"), "gender")
}
\references{
Freshtman, M. (1997) "Cohesive Group Segregation Detection in a Social
Network by the Segregation Matrix Index", Social Networks, 19:193--207
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
  \code{\link{freeman.table}}; \code{\link{gamix}},
  \code{\link{gamix.default}}, \code{\link{gamix.igraph}},
  \code{\link{gamix.table}}; \code{\link{orwg}},
  \code{\link{orwg.default}}, \code{\link{orwg.igraph}},
  \code{\link{orwg.table}}; \code{\link{ssi}}
}

