\name{BGAfun}
\alias{bgafun}
\docType{package}
\title{
BGAfun A method to identify specifity determining residues in protein families
}
\description{
This Package combines between group analysis with sequence alignments to identify specifity determining residues in protein families
}

\author{
Iain Wallace <iain.wallace@ucd.ie>
}
\references{
Wallace, I.M. and Higgins, D.G. (2007) Supervised multivariate analysis of sequence groups to identify specificity determining residues, BMC Bioinformatics, 8, 135.
}
\keyword{ package }

\examples{

library(bgafun)
#read in alignment
LDH <- read.alignment(File = system.file("sequences/LDH-MDH-PF00056.fasta", package = "bgafun"), format = "fasta")

#Assign into groups
LDH.amino=convert_aln_amino(LDH)
LDH.groups=rownames(LDH.amino)
LDH.groups[grep("LDH",LDH.groups)]="LDH"
LDH.groups[grep("MDH",LDH.groups)]="MDH"
LDH.groups=as.factor(LDH.groups)

#Convert to Amino Acid matrix (or Amino Acid properties matrix)
LDH.amino.gapless=remove_gaps_groups(LDH.amino,LDH.groups)
#Add Psuedo counts
LDH.pseudo=LDH.amino.gapless+1

LDH.binary.bga=bga(t(LDH.pseudo),LDH.groups)
plot(LDH.binary.bga)

}
