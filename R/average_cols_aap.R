"average_cols_aap" <-
function(x,y){

## Average out the gaps in a Amino Acid Properties matrix 
## with the average of the group, and remove remaining gaps

aln_length<-dim(x)
gap_fraction<-0.8

y<-as.factor(y)
groups<-levels(y)
no_levels<-length(levels(y))
for(i in 1:no_levels){
    for(j in 1:aln_length[2]){
        col_list<-x[grep(groups[i],as.vector(y)),j]
        if(sum(!col_list==0)/length(col_list)>gap_fraction){
            gap<-grep("TRUE",col_list==0)
            not_gap<-grep("TRUE",!col_list==0)
            col_list[gap]<-sum(col_list[not_gap])/length(col_list[not_gap])
            x[grep(groups[i],as.vector(y)),j]<-col_list
            }
   }

}

no_gaps<-x[,!apply(x==0,2,sum)>0]
return(no_gaps)

}

