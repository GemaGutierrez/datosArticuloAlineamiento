# todos
datos_correlacion <- read.csv2("datos-encuestaLider.csv", header = FALSE)
test <- matrix(1:18, nrow=3)
aux_test <- matrix(1:18, nrow=3)
rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
colnames(test) <- c("Alineam-Demo","Alineam-Afili","Alineam-Visio","Alineam-Coach","Alineam-Pace","Alineam-Comm")
cont_i <-1
for (j in 2:7){ 
    aux_test <- cor.test(datos_correlacion[,1],datos_correlacion[,j],method="kendall")
    test[cont_i]<- aux_test$statistic 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$p.value 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$estimate 
    cont_i <- cont_i+1
}
test
pvalores = test[2,]
p.adjust(pvalores, method="BY")


# Solo pacesseting y commanding

datos_correlacion <- read.csv2("datos-encuestaLider-Pac-Comm.csv", header = FALSE)
test <- matrix(1:6, nrow=3)
aux_test <- matrix(1:6, nrow=3)
rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
colnames(test) <- c("Alineam-Pace","Alineam-Comm")
cont_i <-1
for (j in 2:3){ 
    aux_test <- cor.test(datos_correlacion[,1],datos_correlacion[,j],method="kendall")
    test[cont_i]<- aux_test$statistic 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$p.value 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$estimate 
    cont_i <- cont_i+1
}
test
pvalores = test[2,]
p.adjust(pvalores, method="BY")


# Agrupacion: Flexibles y Autoritarios

datos_correlacion <- read.csv2("datos-encuestaLider-Agrupados.csv", header = FALSE)
test <- matrix(1:6, nrow=3)
aux_test <- matrix(1:6, nrow=3)
rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
colnames(test) <- c("Autoritarios","Flexibles")
cont_i <-1
for (j in 2:3){ 
    aux_test <- cor.test(datos_correlacion[,1],datos_correlacion[,j],method="kendall")
    test[cont_i]<- aux_test$statistic 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$p.value 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$estimate 
    cont_i <- cont_i+1
}
test





#source("calcular-pvalor.R")
#calcular_valor (datos_correlacion)