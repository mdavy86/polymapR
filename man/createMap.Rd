% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{createMap}
\alias{createMap}
\title{Marker ordering function}
\usage{
createMap(pwdDATA, parent_ID = "P1", chm_num, h_num, mapFun = c("haldane",
  "kosambi"), jumpThresh = 5, max_rf = 0.4, min_LOD = 1, rippleFREQ = 1,
  rippleRounds = 3, round3 = TRUE, printMAPS = FALSE, log = NULL)
}
\arguments{
\item{pwdDATA}{pwd \code{data.frame} giving pairwise r and LOD estimates.}

\item{parent_ID}{Identifier of the parent for which the map belongs}

\item{chm_num}{The number of the chromosome being mapped}

\item{h_num}{The number of the homologue being mapped}

\item{mapFun}{The mapping function to use. Currently Haldane and Kosambi are available.}

\item{jumpThresh}{The "Jump" threshold to use (normalised comparison of G2 values), with default value 5 as employed by JoinMap.}

\item{max_rf}{The maximum recombination frequency to use in the mapping, default 0.4}

\item{min_LOD}{The minimum LOD to use in the mapping, default is 1}

\item{rippleFREQ}{How often to ripple (every added marker? every 2 markers?)}

\item{rippleRounds}{The number of rounds of rippling to be attempted}

\item{round3}{Option to stop mapping after two rounds. Default is TRUE, so 3 rounds.}

\item{printMAPS}{Allows the user to see maps developing, default is FALSE.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\description{
Creates a linkage map from a .pwd file using the weighted regression algorithm employed by JoinMap
}
\examples{
\dontrun{
data("all_linkages_list_P1_subset")
map_P1_LG2_hom3 <- createMap(pwdDATA=all_linkages_list_P1_subset[["LG2"]][["homologue3"]],
                             parent_ID = "P1",
                             chm_num=2,
                             h_num=3,
                             mapFun = "haldane",
                             jumpThresh = 5,
                             max_rf = 0.4,
                             min_LOD = 1,
                             rippleFREQ = 1,
                             rippleRounds = 3,
                             round3 = TRUE,
                             printMAPS = FALSE,
                             log = NULL)
                             }
}
