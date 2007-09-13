"convert_aln_amino" <-
function(Alignment){

## Convert an aligment object into a binary matrix, representing the presence or
## absence of amino acid at each position in the alignment

seq_count<-length(Alignment$seq)
z<-list()

for(i in 1:seq_count){
    x<- (unlist(strsplit(Alignment$seq[i],split=NULL)))
    y<-convert_seq_amino(x)
    z[[i]]<-y
}

z<-(as.data.frame(z))
z<-t(z)
rownames(z)<-Alignment$nam
colnames(z)<-create_colnames_amino(Alignment)
return(z)
}

