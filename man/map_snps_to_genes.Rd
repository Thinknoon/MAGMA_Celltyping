% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_snps_to_genes.r
\name{map_snps_to_genes}
\alias{map_snps_to_genes}
\title{Map SNPs to their nearby genes}
\usage{
map_snps_to_genes(
  path_formatted,
  genome_build = NULL,
  upstream_kb = 35,
  downstream_kb = 10,
  N = NULL,
  genome_ref_path = NULL,
  population = "eur",
  storage_dir = tempdir(),
  force_new = FALSE,
  version = NULL,
  verbose = TRUE
)
}
\arguments{
\item{path_formatted}{Filepath of the summary statistics file
(which is expected to already be in the required format).
Can be uncompressed or compressed (".gz" or ".bgz").}

\item{genome_build}{The build of the reference genome
 (\code{"GRCh37"} or \code{"GRCh38"}).
If \code{NULL}, it will be inferred with
\link[MungeSumstats]{get_genome_build}.}

\item{upstream_kb}{How many kilobases (kb) upstream of the gene
should SNPs be included?}

\item{downstream_kb}{How many kilobases (kb) downstream of the gene
should SNPs be included?}

\item{N}{What is the N number for this GWAS? That is cases + controls.}

\item{genome_ref_path}{Path to the folder containing the 1000
genomes reference (downloaded with \link[MAGMA.Celltyping]{get_genome_ref}).}

\item{population}{Which population subset of the genome reference
to include.
\itemize{
\item{"eur" : }{European descent
(Default simply because this is currently
the most common GWAS subpopulation).}
\item{"afr" : }{African descent.}
\item{"amr" : }{Ad Mixed American descent.}
\item{"eas" : }{East Asian descent.}
\item{"sas" : }{South Asian descent.}
}}

\item{storage_dir}{Where to store genome ref.}

\item{force_new}{Set to \code{TRUE} to
rerun \code{MAGMA} even if the output files already exist.
 (Default: \code{FALSE}).}

\item{version}{MAGMA version to use.}

\item{verbose}{Print messages.}
}
\value{
Path to the genes.out file.
}
\description{
Make two external calls to MAGMA. First use it to annotate SNPs
 onto their neighbouring genes. Second, use it to calculate
 the gene level trait association.
}
\examples{
\dontrun{
path_formatted <- MAGMA.Celltyping::get_example_gwas()
genesOutPath <- MAGMA.Celltyping::map_snps_to_genes(
    path_formatted = path_formatted,
    genome_build = "hg19",
    N = 5000)
} 
}
