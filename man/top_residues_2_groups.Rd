\name{top_residues_2_groups}
\alias{top_residues_2_groups}
\title{ Return a list of the top residues at either end of the axis }
\description{
 This will identify the residues that are most discriminating between the two groups, and as such are most likely to be specifity determining resdius
 It will return a list of the residues at the end of the axis in a bga analysis. It is used when there are two groups. 
 The function create\_profile\_strings can be  used to look at the amino acid content in the column that the analysis identifies
}
\usage{
 top_residues_2_groups(bga_results,residue_number=20)
}
\arguments{
  \item{bga_results}{ Results of BGA analysis, either from BGA or run\_between\_pca function  }
  \item{residue_number}{ Number of positions at each end of the axis to return }
}
\examples{
library(bgafun)
data(LDH.groups)
data(LDH.amino.gapless)
LDH.binary.bga=bga(t(LDH.amino.gapless+1),LDH.groups)
top_res=top_residues_2_groups(LDH.binary.bga)
#To tidy up the results
names(top_res)=sub("X","",names(top_res))
# to look at the amino acid content in the alignment 
LDH.profiles=create_profile_strings(LDH.amino.gapless,LDH.groups)
LDH.profiles[, colnames(LDH.profiles) \%in\% names(top_res)]
}
\keyword{ manip }
