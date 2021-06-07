setwd("C:/Users/berta/collserola")
data <- read.csv("Collserolabo.csv", sep=";", stringsAsFactors = TRUE)

mask0 <- data$PARCELA == 0
dat0 <- data[mask0,]
e0 <- nrow(dat0)

mask1 <- data$PARCELA == 1
dat1 <- data[mask1,]
e1 <- nrow(dat1)


mask2 <- data$PARCELA == 2
dat2 <- data[mask2,]
e2 <- nrow(dat2)

mask3 <- data$PARCELA == 3
dat3 <- data[mask3,]
e3 <- nrow(dat3)

mask4 <- data$PARCELA == 4
dat4 <- data[mask4,]
e4 <- nrow(dat4)

mask5 <- data$PARCELA == 5
dat5 <- data[mask5,]
e5 <- nrow(dat5)

y <- c(e0, e1, e2, e3, e4, e5)
x <- c(0, 5, 10, 15, 20, 25)

plot(x, y, xlab = "Distància (m)", ylab = "Espècies (nombre)", main= "Riquesa específica en funció a la distància", type = "l")
