"Weight_Amino" <-
function(my_amino,label){
## Weight an amino acid matrix based on the labels

seq_weights<-Calculate_Row_Weights(my_amino,label)
len<-dim(my_amino)[2]
x<-rep(seq_weights,times=len)
weighted_amino<-my_amino*x
return(weighted_amino)
}

