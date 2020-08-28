complete<-function(directory,pollutant,id){
  file_names<-list.files(paste0(c(getwd(),directory),collapse="/"),full.names = TRUE)
  print(file_names[3])
  k<-list()
  data_for_mean<-list()
  for(i in id){data<- read.csv(file_names[i])
               data_for_mean[i]<-data$pollutant
               k[i]<-i
  }
  ju<-unlist(k)
  print(ju)
  print(mean(ju))
  x<-unlist(data_for_mean)
  o<-x
  bad <- is.na(o) 
  j<-o[!bad]
  print(j)
  mean(j)
}