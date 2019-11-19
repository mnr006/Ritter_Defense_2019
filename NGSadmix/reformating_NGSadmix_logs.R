setwd("~/Desktop/Ritter_Defense_2019/NGSadmix")

#Formating NGSadmix log files and K values to prepare for clumpak
logs <- as.data.frame(read.table("logfile"))
logs$K <- c(rep("10", 10), rep("1", 10), rep("2", 10), rep("3", 
                                                          10), rep("4", 10), rep("5", 10), rep("6", 10), rep("7", 10), rep("8", 10), rep("9", 10))
write.table(logs[, c(2, 1)], "logfile_formatted", row.names = F, 
            col.names = F, quote = F)


#K=2 work, found to be the "best" K according to clumpak 
#turing qopt file into matrix
admixture_K2_run15 <- t(as.matrix(read.table("NGSadmix_K_2_run_18.qopt")))
head(admixture_K2_run15[, 1:10])


#K=2 work
#assigning populations
populations_K2 <- c(rep("HA19", 38), rep("HA9", 37), rep("HA15", 31), rep("Wurtz", 49), rep("ST5R", 36), rep("GRBD", 35))

barplot(admixture_K2_run15, col = c("white", "blue"), space = 0, border = NA, 
        ylab = "Admixture", xlab = "Sites", main = "Admixture (K=2)")
text(c(5, 60, 95, 140, 180, 210), -0.05, unique(populations_K2), 
     xpd = T)
abline(v = c(38, 75, 106, 155, 191), lty = 5, lwd = 2, col = "black")
#initial plotting
barplot(admixture_K2_run15, col = c("blue", "green"), space = 0, border = NA, 
        ylab = "Admixture", main = "Admixture (K=2)")
text(c(20, 60, 95, 140, 180, 210), -0.05, unique(populations), 
     xpd = T, cex=2)
abline(v = c(38, 75, 106, 155, 191), lty = 5, lwd = 2, col = "black")
#rearragnging plot 
reorganizing_admix_K2 <- admixture_K2_run15[, c(192:226, 156:191, 107:155, 76:106, 1:38,39:75)]
barplot(reorganizing_admix_K2, col = c("forestgreen", "lightskyblue"), space = 0, border = NA, 
        family = "serif", font = 2, font.lab = 2, font.axis = 2, axes= FALSE)
abline(v = c(35, 71, 120, 151, 189), lty = 5, lwd = 2.5, col = "black")


#K=3 work
#turing qopt file into matrix
admixture_K3_run18 <- t(as.matrix(read.table("NGSadmix_K_3_run_18.qopt")))
head(admixture_K3_run18[, 1:10])

#assigning populations
populations <- c(rep("HA19", 38), rep("HA9", 37), rep("HA15", 31), rep("Wurtz", 49), rep("ST5R", 36), rep("GRBD", 35))

barplot(admixture_K3_run18, col = c("lightskyblue", "forestgreen", "white"), space = 0, border = NA, 
        ylab = "Admixture", xlab = "Sites", main = "Admixture (K=3)")
text(c(20, 60, 95, 140, 180, 210), -0.05, unique(populations), 
     xpd = T, cex=2)
abline(v = c(38, 75, 106, 155, 191), lty = 5, lwd = 2, col = "black")

#rearranging figure to align with other tables/figures in terms of labeling
reorganizing_admix <- admixture_K3_run18[, c(192:226, 156:191, 107:155, 76:106, 1:38,39:75)]

#assigning populations (rearranging)
populations_rearranged <- c(rep("Kalispell GRBD", 35),rep("Kalispell ST5R", 36),rep("Wurtz", 49),rep("Nyack HA15", 31),rep("Nyack HA19", 38),rep("Nyack HA9", 37))
barplot(reorganizing_admix, col = c("lightskyblue", "forestgreen", "wheat"), space = 0, border = NA, family = "serif", font = 2, font.lab = 2, font.axis = 2, axes= FALSE)
text(c(18, 53, 95, 136, 172, 208), -0.05, unique(populations_rearranged), 
     xpd = T, cex=1.5, family = "serif")
abline(v = c(35, 71, 120, 151, 189), lty = 5, lwd = 2.5, col = "black")

#using R base function par to put admix plots together
par(mfrow=c(2,1), mai=c(0.25,0.1,.2,0.1))


#K= 4
admixture_K4_run19 <- t(as.matrix(read.table("NGSadmix_K_4_run_19.qopt")))
head(admixture_K4_run19[, 1:10])

#assigning populations
populations <- c(rep("HA19", 38), rep("HA9", 37), rep("HA15", 31), rep("Wurtz", 49), rep("ST5R", 36), rep("GRBD", 35))

barplot(admixture_K4_run19, col = c("lightskyblue", "forestgreen", "white", "black"), space = 0, border = NA, 
        ylab = "Admixture", xlab = "Sites", main = "Admixture (K=4)")
text(c(20, 60, 95, 140, 180, 210), -0.05, unique(populations), 
     xpd = T, cex=2)
abline(v = c(38, 75, 106, 155, 191), lty = 5, lwd = 2, col = "black")


#K=6
admixture_K6_run19 <- t(as.matrix(read.table("NGSadmix_K_6_run_19.qopt")))
head(admixture_K6_run19[, 1:10])

#assigning populations
populations <- c(rep("HA19", 38), rep("HA9", 37), rep("HA15", 31), rep("Wurtz", 49), rep("ST5R", 36), rep("GRBD", 35))

barplot(admixture_K6_run19, col = c("lightskyblue", "forestgreen", "white", "black", "yellow", "red"), space = 0, border = NA, 
        ylab = "Admixture", xlab = "Sites", main = "Admixture (K=4)")
text(c(20, 60, 95, 140, 180, 210), -0.05, unique(populations), 
     xpd = T, cex=2)
abline(v = c(38, 75, 106, 155, 191), lty = 5, lwd = 2, col = "black")


