"remove_gaps_groups" <-
function(x,z,gap_fraction=0.6){
## Remove gaps from Amino Acid matrix created by convert_aln_amino()
## Remove columns that contain more than gap_fraction in any group

if(gap_fraction>=1 || gap_fraction<0){
    y<-"Error::Gap_fraction should be between 0 and 1"
    print(y)
    return(y)
}

z<-as.factor(z)
groups<-levels(z)
no_levels<-length(levels(z))

## Tracker index number of columns of amino acid matrix
include<-rep(TRUE,length(colnames(x))/20) 
for(i in 1:no_levels){
    sub_matrix<-x[grep(groups[i],as.vector(z)),]
    dimensions<-dim(sub_matrix)
    ungapped<-gap_fraction*dimensions[1]
    total_residues<-sum_20_aln(sub_matrix)
    include<-include & (total_residues>ungapped)
}
y<-x[,rep((include),each=20)]
return(y)
}

