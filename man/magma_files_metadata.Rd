% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{magma_files_metadata}
\alias{magma_files_metadata}
\title{MAGMA_Files_Public: metadata}
\format{
An object of class \code{data.table} (inherits from \code{data.frame}) with 714 rows and 44 columns.
}
\source{
\code{
#### Check what files are available ####
magma_files_metadata <- data.table::fread(
    file.path("https://github.com/neurogenomics/MAGMA_Files_Public",
              "raw/master/metadata.csv"), drop = "V1"
)
usethis::use_data(magma_files_metadata, overwrite = TRUE)
}
}
\usage{
data("magma_files_metadata")
}
\description{
Metadata for all pre-computed metadata files stored in the 
\href{https://github.com/neurogenomics/MAGMA_Files_Public}{
MAGMA_Files_Public} GitHub repository.
}
\keyword{datasets}
