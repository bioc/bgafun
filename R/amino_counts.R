"amino_counts" <-
function(x,k){
##Calculate the counts of amino acid types at a position.
##k is the position
##x is the matrix

i<-(k*20)+1
j<-i+19
y<-x[,i:j]
z<-(apply(y,2,sum))
return(z)
}

