% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{search_then_determine}
\alias{search_then_determine}
\title{Search the data folder recursively then determine their types.}
\usage{
search_then_determine(path = system.file(file.path("extdata", "demo_results"),
  package = "LncPipeReporter"))
}
\arguments{
\item{path}{path for searching.}
}
\value{
A list with types containing file absolute path in vector.
}
\description{
Search the data folder recursively then determine their types.
}
