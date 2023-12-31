"convert_seq_AAP" <-
function(x){

## Convert sequence into vector using the property encoding scheme

D<-c(1.050, 0.302,-3.656,-0.259,-3.242)
T<-c(-0.032, 0.326, 2.213, 0.908, 1.313)
E <-c( 1.357,-1.453, 1.477, 0.113,-0.837)
C <-c(-1.343, 0.465,-0.862,-1.020,-0.255)
M <-c(-0.663,-1.524, 2.219,-1.005, 1.212)
Y <-c(0.260, 0.830, 3.097,-0.838, 1.512)
K <-c(1.831,-0.561, 0.533,-0.277, 1.648)
R <-c(1.538,-0.055, 1.502, 0.440, 2.897)
S <-c(-0.228, 1.399,-4.760, 0.670,-2.647)
Q <-c( 0.931,-0.179,-3.005,-0.503,-1.853)
F <-c(-1.006,-0.590, 1.891,-0.397, 0.412)
P <-c( 0.189, 2.081,-1.628, 0.421,-1.392)
W <-c(-0.595, 0.009, 0.672,-2.128,-0.184)
N <-c( 0.945, 0.828, 1.299,-0.169, 0.933)
G <-c(-0.384, 1.652, 1.330, 1.045, 2.064)
V <-c(-1.337,-0.279,-0.544, 1.242,-1.262)
I <-c(-1.239,-0.547, 2.131, 0.393, 0.816)
L <-c(-1.019,-0.987,-1.505, 1.266,-0.912)
A <-c(-0.591,-1.302,-0.733, 1.570,-0.146)
H <-c( 0.336,-0.417,-1.673,-1.474,-0.078)
gap <-c( 0, 0, 0, 0, 0)

z<-length(unlist(strsplit(x,split=NULL)))
ans<-vector()
for(i in 1:z){
   if((x[i]=="D")||(x[i]=="d")){
       ans<-c(ans,D)}
   if((x[i]=="T")||(x[i]=="t")){
       ans<-c(ans,T)}
   if((x[i]=="E")||(x[i]=="e")){
       ans<-c(ans,E)}
   if((x[i]=="C")||(x[i]=="c")){
       ans<-c(ans,C)}
   if((x[i]=="M")||(x[i]=="m")){
       ans<-c(ans,M)}
   if((x[i]=="Y")||(x[i]=="y")){
       ans<-c(ans,Y)}
   if((x[i]=="K")||(x[i]=="k")){
       ans<-c(ans,K)}
   if((x[i]=="R")||(x[i]=="r")){
       ans<-c(ans,R)}
   if((x[i]=="S")||(x[i]=="s")){
       ans<-c(ans,S)}
   if((x[i]=="Q")||(x[i]=="q")){
       ans<-c(ans,Q)}
   if((x[i]=="F")||(x[i]=="f")){
       ans<-c(ans,F)}
   if((x[i]=="P")||(x[i]=="p")){
       ans<-c(ans,P)}
   if((x[i]=="W")||(x[i]=="w")){
       ans<-c(ans,W)}
   if((x[i]=="N")||(x[i]=="n")){
       ans<-c(ans,N)}
   if((x[i]=="G")||(x[i]=="g")){
       ans<-c(ans,G)}
   if((x[i]=="V")||(x[i]=="v")){
       ans<-c(ans,V)}
   if((x[i]=="I")||(x[i]=="i")){
       ans<-c(ans,I)}
   if((x[i]=="L")||(x[i]=="l")){
       ans<-c(ans,L)}
   if((x[i]=="A")||(x[i]=="a")){
       ans<-c(ans,A)}
   if((x[i]=="H")||(x[i]=="h")){
       ans<-c(ans,H)}
   if(x[i]=="-"){
       ans<-c(ans,gap)}
   if(x[i]=="."){
       ans<-c(ans,gap)}
   if(x[i]=="X"){
       ans<-c(ans,gap)}

   if(!length(ans)==5*i){
       print(c("Error for position ",i, "in ",x))
       return("ERROR")
   }
}           


return(ans)

}

