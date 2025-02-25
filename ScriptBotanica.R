setwd("C:/Users/berta/collserola")
data <- read.csv("Collserolabo.csv", sep=";", stringsAsFactors = TRUE)

## Per fer el recompte de la riquesa espec�fica de cada parcel�la, fem la suma de les files corresponents i ho emmagatzemem a les variables "e"):
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

## Per fer els diferents plots agrupem les diferents dades en x i y:

y <- c(e0, e1, e2, e3, e4, e5)
x <- c(0, 5, 10, 15, 20, 25)

## Plot corresponent a l'exercici 3, el qual mostra la riquesa espec�fica corresponent a cada parcel�la (i per tant, a les diferents dist�ncies):

plot(x, y, xlab = "Dist�ncia (m)", ylab = "Esp�cies (nombre)", main= "Riquesa espec�fica en funci� a la dist�ncia", type = "l")

## Plot corresponent a l'exercici 5, el qual mostra quines esp�cies apareixen m�s a prop del cam� i quines m�s lluny:

plot(data$ESPECIE, data$DISTANCIA, xlab= NULL, ylab= "Dist�ncia (m)", main= "Esp�cies segons la dist�ncia", las = 2)


