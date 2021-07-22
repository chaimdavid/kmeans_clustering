#Use of the "NbClust" function that performs tests and ends up with the best number of k clusters
#for the given data
library(NbClust)
nb<-NbClust(heatdata,min.nc=5,max.nc=8,method="ward.D2")

#Performance of the "kmeans" function seperating the genes in the suggested by the "NbClust"
#amount of clusters
set.seed(93)
kclusters<-kmeans(heatdata,centers=5,iter.max=100)
cluster1<-which(kclusters$cluster==1)
cluster2<-which(kclusters$cluster==2)
cluster3<-which(kclusters$cluster==3)
cluster4<-which(kclusters$cluster==4)
cluster5<-which(kclusters$cluster==5)

#Creation of the character vectors that contain the genes of each clusters
cluster1.genenames<-rownames(as.matrix(cluster1))
cluster2.genenames<-rownames(as.matrix(cluster2))
cluster3.genenames<-rownames(as.matrix(cluster3))
cluster4.genenames<-rownames(as.matrix(cluster4))
cluster5.genenames<-rownames(as.matrix(cluster5))
write.xlsx(cluster1.genenames,"3.Genenames from cluster 1.xlsx",col.names=F)
write.xlsx(cluster2.genenames,"3.Genenames from cluster 2.xlsx",col.names=F)
write.xlsx(cluster3.genenames,"3.Genenames from cluster 3.xlsx",col.names=F)
write.xlsx(cluster4.genenames,"3.Genenames from cluster 4.xlsx",col.names=F)
write.xlsx(cluster5.genenames,"3.Genenames from cluster 5.xlsx",col.names=F)
