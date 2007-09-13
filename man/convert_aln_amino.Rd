\name{convert_aln_amino}
\alias{convert_aln_amino}
\title{ Converts an alignment object into binary amino matrix }                      
\description{
  Converts an alignment object, read in by the seqinr package, into a binary matrix.
  The binary matrix represents the absence or presence of amino acids at each position in the alignment
}
\usage{
 convert_aln_amino(Alignment)
}
\arguments{
  \item{Alignment}{ Alignment object read in using read.alignment function in seqinr }
}
\examples{
library(bgafun)
LDH <- read.alignment(File = system.file("sequences/LDH-MDH-PF00056.fasta", package = "bgafun"), format = "fasta")
LDH.amino=convert_aln_amino(LDH)
dim(LDH.amino)
}
\keyword{IO}
