"calculate_pseudo" <-
function(amino,groups,i){
##Calculate the fraction to add onto each residue in the amino matrix
##Need the amino matrix, the groups, and which group to work on.

groups<-as.factor(groups)
grouping=levels(groups)[i]
profile<-create_profile(amino[groups==grouping,])
pseudo<-pseudo_counts(profile)
to_add<-rep(pseudo,each=sum(groups==grouping))
dim(to_add)<-c(sum(groups==grouping),dim(profile)[1]*dim(profile)[2])
rownames(to_add)<-rownames(amino)[groups==grouping]
colnames(to_add)<-colnames(amino)
return(to_add)
}

