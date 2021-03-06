% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{write.pwd}
\alias{write.pwd}
\title{Write a JoinMap compatible .pwd file from linkage data.frame.}
\usage{
write.pwd(linkage_df, pwd_file, file_info, log = NULL)
}
\arguments{
\item{linkage_df}{A linkage \code{data.frame}.}

\item{pwd_file}{A character string specifying a file open for writing.}

\item{file_info}{A character string added to the first lines of the .pwd file.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\description{
Output of this function allows to use JoinMap to perform the marker ordering step.
}
\examples{
data("all_linkages_list_P1_split")
write.pwd(all_linkages_list_P1_split[["LG3"]][["homologue1"]],
           "LG3_homologue1_P1.pwd",
           "Please feed me to JoinMap")
}
