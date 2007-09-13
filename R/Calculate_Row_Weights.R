"Calculate_Row_Weights" <-
function(my_amino,label){

## Calculate the sequence weights for all the rows 
## in my_amino,using label as the grouping

label<-as.factor(label)
weight<-as.vector(label)
group_no<-length(levels(label))

for(i in 1:group_no){
    x<-my_amino[levels(label)[i]==label,]
    weight[levels(label)[i]==label]<-Henikoff_weights(x)
}

return(as.numeric(weight))

}

