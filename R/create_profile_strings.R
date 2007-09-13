"create_profile_strings" <-
function(x,y){

## Return the profile strings from x based on groups in y

groups<-levels(y)
z<-rep(0,dim(x)[2])
for(i in 1:length(groups)){
    temp<-create_profile(x[y==groups[i],])
    dim(temp)<-c(1,20*dim(temp)[2])
    row.names(temp)<-groups[i]
    z<-rbind(z,temp)    
}

result<-z[!(row.names(z)=="z"),]
colnames(result)<-colnames(x)
return(result)
}

