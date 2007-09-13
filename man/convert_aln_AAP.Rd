\name{convert_aln_AAP}
\alias{convert_aln_AAP}
\title{ Converts alignment into a matrix using the amino acid property encoding }
\description{
Each residue in the alignment is represented by a vector of five continuous variables as given by Atchley et al 
They applied a multivariate statistic approach to reduce the information in 494 amino acid attributes into a set of five factors for each amino acid. 
Factor A is termed the polarity index. It correlates well with a large variety of descriptors including the number of hydrogen bond donors, polarity versus nonpolarity, and hydrophobicity versus hydrophilicity. 
Factor B is a secondary structure index. It represents the propensity of an amino acid to be in a particular type of secondary structure, such as a coil, turn or bend versus the frequency of it in an a-helix. 
Factor C is correlated with molecular size, volume and molecular weight. 
Factor D reflects the number of codons coding for an amino acid and amino acid composition. These attributes are related to various physical properties including refractivity and heat capacity. 
Factor E is related to the electrostatic charge. 
Gaps are represented by five zeros and should be either removed or replaced by the average of the column for a particular group.
}
\usage{
 convert_aln_AAP(Alignment)
}
\arguments{
  \item{Alignment}{ Alignment object read in using read.alignment function in seqinr }
}
\references{
Atchley, W. R., J. Zhao, et al. (2005). "Solving the protein sequence metric problem." Proc Natl Acad Sci U S A 102(18): 6395-400.
}
\examples{
library(bgafun)
data(LDH)
data(LDH.groups)
LDH.aap=convert_aln_AAP(LDH)
dim(LDH.aap)
LDH.aap.ave=average_cols_aap(LDH.aap,LDH.groups)
dim(LDH.aap.ave)
}

\keyword{ IO }

