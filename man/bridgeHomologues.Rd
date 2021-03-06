% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{bridgeHomologues}
\alias{bridgeHomologues}
\alias{assembleDuplexLinks}
\title{Use bridge markers to cluster homologues into linkage groups}
\usage{
bridgeHomologues(cluster_stack, cluster_stack2 = NULL, linkage_df,
  linkage_df2 = NULL, LOD_threshold = 10, automatic_clustering = TRUE,
  LG_number = 5, parentname = "", min_bridges = 2, log = NULL)
}
\arguments{
\item{cluster_stack}{A \code{data.frame} with a column \code{"marker"} specifying markernames,
and a column \code{"cluster"} specifying marker cluster}

\item{cluster_stack2}{Optional. A \code{cluster_stack} for the other parent.
Use this argument if cross-parent markers are used (e.g. when using 1.1 markers).}

\item{linkage_df}{A linkage \code{data.frame} as output of \code{\link{linkage}} between bridge (e.g. 1.0 and 2.0) markers.}

\item{linkage_df2}{Optional. A \code{linkage_df} specifying linkages between 1.0 and cross-parent markers in the other parent.
Use this argument if cross-parent markers are used (e.g. when using 1.1, 2.1, 1.2 and/or 2.2 markers).
The use of multiple types of cross-parent markers is allowed.}

\item{LOD_threshold}{Integer. The LOD threshold specifying at which LOD score a link between 1.0 and bridge (e.g. 2.0) markers is used for clustering homologues.}

\item{automatic_clustering}{Logical. Should clustering be executed without user input?}

\item{LG_number}{Integer. Expected number of chromosomes (linkage groups)}

\item{parentname}{Name of the parent. Used in the main title of the plot.}

\item{min_bridges}{The minimum number of cross-parent bridges for a link to be considered.
Make this number higher if there are a lot of spurious links.
This argument is only used for biparental bridges (N.B. if \code{cluster_stack2} and \code{linkage_df2} are specified).}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\value{
A data.frame with markers classified by homologue and linkage group.
}
\description{
Clustering at high LOD scores results in marker clusters representing homologues.
\code{bridgeHomologues} clusters these (pseudo)homologues to linkage groups using linkage information between 1.0 and
bridge markers within a parent (e.g. 2.0 for a tetraploid).
If parent-specific bridge markers (e.g. 2.0) cannot be used, biparental markers can also be used (e.g. 1.1, 1.2, 2.1, 2.2 and 1.3 markers).
The linkage information between 1.0 and biparental markers can be combined.
}
\examples{
data("P1_homologues", "P2_homologues", "SN_DN_P1", "SN_SS_P1", "SN_SS_P2")
ChHomDf<-bridgeHomologues(cluster_stack = P1_homologues[["5"]],
                 linkage_df=SN_DN_P1,
                 LOD_threshold=4,
                 automatic_clustering=TRUE,
                 LG_number=5,
                 parentname="P1")

ChHomDf<-bridgeHomologues(cluster_stack = P1_homologues[["5"]],
                           cluster_stack2 = P2_homologues[["5"]],
                 linkage_df=SN_SS_P1,
                 linkage_df2=SN_SS_P2,
                 LOD_threshold=4,
                 automatic_clustering=TRUE,
                 LG_number=5,
                 parentname="P1")
}
