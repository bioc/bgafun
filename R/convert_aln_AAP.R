"convert_aln_AAP" <-
function(Alignment){
## Convert Alignment into matrix using Amino Acid properties encoding
## There are five AAP factors: 
## Factor A: Polarity Index 
## Factor B: Secondary Structural Configurations
## Factor C: Molecular Size
## Factor D: "Amino Acid Composition, number of condons etc"
## Factor E: Charge

seq_count<-length(Alignment$seq)
z<-list()

for(i in 1:seq_count){
    x<- (unlist(strsplit(Alignment$seq[i],split=NULL)))
    y<-convert_seq_AAP(x)
    z[[i]]<-y
}

z<-(as.data.frame(z))
z<-t(z)
rownames(z)<-Alignment$nam
colnames(z)<-create_colnames_AAP(Alignment)

return(z)

}

