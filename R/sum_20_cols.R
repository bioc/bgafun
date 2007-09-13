"sum_20_cols" <-
function(x,k){
##this will calculate the number of amino acids at the ith pos in the alignment
i<-(k*20)+1
j<-i+19
y<-x[,i:j]
z<-sum(apply(y,1,sum))
return(z)

}

