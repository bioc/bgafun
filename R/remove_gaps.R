"remove_gaps" <-
function(x,gap_fraction=0.6){
# Remove gaps from Amino Acid matrix created by convert_aln_amino()

if(gap_fraction>=1||gap_fraction<0){
    y<-"Error::Gap_fraction should be between 0 and 1"
    print(y)
    return(y)
}

dimensions<-dim(x)
ungapped<-gap_fraction*dimensions[1]
total_residues<-sum_20_aln(x)
y<-x[,rep((total_residues>ungapped),each=20)]
return(y)

}

