"create_colnames_amino" <-
function(Alignment){

## Create column names for the amino acid matrix. 
## The order corresponds to the vectors used in convert_seq_amino()
listA<-c("xA","xR","xN","xD","xC","xQ","xE","xG","xH","xI")
listB<-c("xL","xK","xM","xF","xP","xS","xT","xW","xY","xV")
generic_list<-c(listA,listB)
col_names<-vector()
Aln_length<-length((unlist(strsplit(Alignment$seq[1],split=NULL))))
for(i in 1:Aln_length){
    add<-sub("x",i,generic_list)
    col_names<-c(col_names,add)
}
return(col_names)
}

