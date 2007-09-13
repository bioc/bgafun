"create_profile" <-
function(x){
## Create profile, number of amino acids in each position, 
## for amino acid matrix x

ans<-vector()
amino_labels<-colnames(x)[1:20]
amino_labels<-sub("1","",amino_labels)
dimensions<-dim(x) 
seq_count<-dimensions[1]

for(j in 0:((dimensions[2]/20)-1)){
    z<-amino_counts(x,j)
    ans<-c(ans,z)
}

dim(ans)<-c(20,(dimensions[2]/20))
rownames(ans)<-amino_labels
return(ans)

}

