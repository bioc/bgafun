"sum_20_aln" <-
function(x){
## Calculates number of amino acids in each group of 20 columns 
## (1 column in an alignment)

ans<-vector();
dimensions<-dim(x) 
for(j in 0:((dimensions[2]/20)-1)){
    z<-sum_20_cols(x,j)
    ans<-c(ans,z)
}

return(ans)

}

