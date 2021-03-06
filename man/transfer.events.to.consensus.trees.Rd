% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clonevol.r
\name{transfer.events.to.consensus.trees}
\alias{transfer.events.to.consensus.trees}
\title{Transfer driver variants/events from the cluster onto the clonal
evolution trees, so the trees can be plot with events on branch}
\usage{
transfer.events.to.consensus.trees(x, events, cluster.col.name = "cluster",
  event.col.name)
}
\arguments{
\item{x:}{output of infer.clonal.models}

\item{events:}{a subset of the variants data frame used in infer.clonal.models
that contains only rows whose variants are defined as driver event}

\item{cluster.col.name:}{name of the cluster column in events and variants
data frames}

\item{event.col.name:}{The name of the events that will be displayed in
bell and tree plots, defined by the user. This can be gene name, or gene name
+ variant detail.}
}
\description{
Transfer driver events (defined by the user in the variant data frame) to the
consensus trees, allowing them to be mapped and visualized in the bell and
tree plots
}
\examples{
data(aml1)
x = aml1$variants
y = aml1
y <- transfer.events.to.consensus.trees(aml1, x[x$is.driver,],
               cluster.col.name = 'cluster',
               event.col.name = 'gene')

}
