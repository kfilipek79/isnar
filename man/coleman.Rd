% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/coleman.R
\name{coleman}
\alias{coleman}
\alias{coleman.default}
\alias{coleman.igraph}
\alias{coleman.table}
\title{Coleman's homophily index}
\usage{
coleman(object, ...)

\method{coleman}{table}(object, gsizes = NULL, loops = FALSE, ...)

\method{coleman}{igraph}(object, vattr, ...)

\method{coleman}{default}(object, ...)
}
\arguments{
\item{object}{R object, see Details for available methods}

\item{...}{other arguments passed to/from methods}

\item{gsizes}{numeric vector of group sizes}

\item{loops}{logical, whether loops are allowed}

\item{vattr}{character, vertex attribute}
}
\value{
Vector of numeric values of the index for each group
}
\description{
Colemans's homphily index for directed networks.
}
\details{
Coleman's homophily index computes homophily scores for each group
defined by a vertex attribute.

If \code{object} is a table it is interpreted as a mixing matrix. If it is
only the contact layer (2-dimensional), then vector of group sizes need to
be supplied via \code{gsizes}.

\code{object} can be of class "igraph"

Default method tries to coerce \code{object} to table and use other methods.
}
\examples{
coleman(as.directed(Wnet, "mutual"), "gender")

coleman(as.directed(EFnet, "mutual"), "type")
}
\references{
Coleman, J. (1958) "Relational analysis: The study of social organizations
with survey methods", Human Organization 17:28--36.
}
\seealso{
Other segregation.measures: \code{\link{assort}},
  \code{\link{assort.default}},
  \code{\link{assort.igraph}}, \code{\link{assort.table}};
  \code{\link{ei}}, \code{\link{ei.default}},
  \code{\link{ei.igraph}}, \code{\link{ei.table}};
  \code{\link{freeman}}, \code{\link{freeman.default}},
  \code{\link{freeman.igraph}},
  \code{\link{freeman.table}}; \code{\link{gamix}},
  \code{\link{gamix.default}}, \code{\link{gamix.igraph}},
  \code{\link{gamix.table}}; \code{\link{orwg}},
  \code{\link{orwg.default}}, \code{\link{orwg.igraph}},
  \code{\link{orwg.table}}; \code{\link{smi}},
  \code{\link{smi.default}}, \code{\link{smi.igraph}},
  \code{\link{smi.table}}; \code{\link{ssi}}
}

