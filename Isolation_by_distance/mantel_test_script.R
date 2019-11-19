#Looking at Isolation by Distance

#loading vegan package for mantel test
if(!require(vegan)){install.packages("vegan");library(vegan)} 

#setting working directory
setwd("~/Desktop/Ritter_Defense_2019/Isolation_by_distance")

#loading in data
corrected<-as.dist(read.csv("corrected_Fst.csv", header= FALSE))
distance <-as.dist(read.csv("distance.csv", header= FALSE))

mantel(corrected, distance)

        