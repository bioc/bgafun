"run_between_pca" <-
function(x,z,y){
## Cover function to run the between group analysis
## y is the group labels
## x is the amino acid matrix, used to calculate weights
## z is the matrix to be analysed

y<-as.factor(y)
seq_weights<-Calculate_Row_Weights(x,y)
x<-as.matrix(x)
z<-as.matrix(z)

dataset.pca<-dudi.pca(as.data.frame(z),row.w=seq_weights,scannf=FALSE,nf=20)
dataset.bet<-between(dataset.pca,y,scannf=FALSE,nf=length(levels(y)))
res <- list(ord = dataset.pca, bet = dataset.bet, fac = y)
class(res) <- c("pca", "bga")
return(res)
}

