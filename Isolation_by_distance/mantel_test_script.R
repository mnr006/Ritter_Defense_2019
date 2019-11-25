#Looking at Isolation by Distance

#loading vegan package for mantel test
if(!require(vegan)){install.packages("vegan");library(vegan)} 

#setting working directory
setwd("~/Desktop/Ritter_Defense_2019/Isolation_by_distance")

#loading in data
corrected<-as.dist(read.csv("corrected_Fst.csv", header= FALSE))
pointtopoint_distance <-as.dist(read.csv("pointtopoint_distance.csv", header= FALSE))
rivermiles_distance <-as.dist(read.csv("rivermile_distance.csv", header= FALSE))

mantel(corrected, pointtopoint_distance)
mantel(corrected, rivermiles_distance)


