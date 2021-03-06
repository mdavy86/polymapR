% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{screen_for_duplicate_markers}
\alias{screen_for_duplicate_markers}
\title{Screen for and remove duplicated markers}
\usage{
screen_for_duplicate_markers(dosage_matrix, merge_NA = TRUE,
  plot_cluster_size = TRUE, log = NULL)
}
\arguments{
\item{dosage_matrix}{An integer matrix with markers in rows and individuals in columns.}

\item{merge_NA}{Logical. Should missing values be imputed if non-NA in duplicated marker? By default, \code{TRUE}.
If \code{FALSE} the dosage scores of representing marker are represented in the filtered_dosage_matrix.}

\item{plot_cluster_size}{Logical. Should an informative plot about duplicate cluster size be given? By default, \code{TRUE}.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\value{
A list containing:
\itemize{
\item{bin_list} list of binned markers. The list names are the representing markers.
This information can later be used to enrich the map with binned markers.
\item{filtered_dosage_matrix} dosage_matrix with merged duplicated markers.
The markers will be given the name of the marker with least missing values.
}
}
\description{
\code{screen_for_duplicate_markers} identifies and merges duplicate markers.
}
\examples{
data("screened_data3")
dupmscreened <- screen_for_duplicate_markers(screened_data3)
}
