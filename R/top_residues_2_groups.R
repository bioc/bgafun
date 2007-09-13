"top_residues_2_groups" <-
function(bga_results,residue_number=20){
## Return array sorted by absolute column coordinates
   
    if(length(levels(bga_results$fac))==2){
        index <- rev(order((as.numeric(bga_results$bet$co[,1]))))      
        c<-cbind(rownames(bga_results$bet$co)[index],bga_results$bet$co[index,])
        y<-as.matrix(as.numeric(c[,2])) 
        rownames(y)<-c[,1]
        x<-c(y[1:residue_number,], y[(length(y)-residue_number):length(y),])
        }else{
           x<-("Only use this function if the number of groups is 2")
    } 

return(x)
}

