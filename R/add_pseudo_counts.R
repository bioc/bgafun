"add_pseudo_counts" <-
function(amino,groups){
## Add pseudo counts to a binary matrix, defined seperately for each group
## The pseudo counts are calculated using the Henikoff method

new_amino<-amino
grouping<-as.factor(groups)
for(i in 1:length(levels(grouping))){
    index<-grouping==levels(grouping)[i]
    new_amino[index]<-amino[index,]+calculate_pseudo(amino,grouping,i)
}

return(new_amino)

}

