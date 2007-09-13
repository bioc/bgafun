"sum_aln" <-
function(x){
##Calculate the number of amino acids in each position in amino acid matrix
##
ans="";
for(j in 1:20){
    z<-sum_20_cols(x,j)
    ans<-c(ans,z)
    }
    
return(ans)
}

