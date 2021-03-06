% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{overviewSNlinks}
\alias{overviewSNlinks}
\title{Plotting 1.0 links between homologues}
\usage{
overviewSNlinks(linkage_df, LG_hom_stack, LG_number, LOD_threshold,
  ymax = NULL, log = NULL)
}
\arguments{
\item{linkage_df}{A data.frame as output of \code{\link{linkage}} with arguments markertype1=c(1,0) and markertype2=NULL.}

\item{LG_hom_stack}{A data.frame with a column "SxN_Marker" specifying markernames,
a column "homologue" specifying homologue cluster and "LG" specifying linkage group.}

\item{LG_number}{Integer. Chromosome (linkage group) number.}

\item{LOD_threshold}{Numeric. LOD threshold of linkages which are plotted.}

\item{ymax}{Maximum y-limit of the plots.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\description{
\code{overviewSNlinks} is written to enable merging of homologue fractions.
Fractions of homologues will have more markers in coupling than in repulsion, whereas separate homologues will only have markers in repulsion.
}
\examples{
data("SN_SN_P1", "LGHomDf_P1_1")
overviewSNlinks(linkage_df=SN_SN_P1,
               LG_hom_stack=LGHomDf_P1_1,
               LG_number=5,
               LOD_threshold=3)
}
