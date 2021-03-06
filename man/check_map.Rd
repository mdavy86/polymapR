% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{check_map}
\alias{check_map}
\title{Check the quality of a linkage map using heatplots}
\usage{
check_map(linkage_list, maplist, mapfn = "haldane", lod.thresh = 5)
}
\arguments{
\item{linkage_list}{A named \code{list} with r and LOD of markers within linkage groups.}

\item{maplist}{A list of maps. In the first column marker names and in the second their position.}

\item{mapfn}{The map function used in generating the maps, either one of "haldane" or "kosambi". By default "haldane" is assumed.}

\item{lod.thresh}{Numeric. Threshold for the LOD values to be displayed in heatmap, by default 5 (set at 0 to display all values)}
}
\description{
Perform a series of checks on a linkage map and visualise the results using heatplots. Also shows the discrepency between
the pairwise and multi-point r estimates, plotted against the LOD of the pairwise estimate.
}
\examples{
\dontrun{
data("maplist_P1","all_linkages_list_P1")
check_map(linkage_list = all_linkages_list_P1, maplist = maplist_P1)
}
}
