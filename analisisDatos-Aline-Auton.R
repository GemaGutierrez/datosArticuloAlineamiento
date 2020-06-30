datos_correlacion <- read.csv2("datos-encuesta-Autonom-Alineam.csv", header = FALSE)
test <- matrix(1:6, nrow=3)
aux_test <- matrix(1:6, nrow=3)
rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
colnames(test) <- c("Alineam",)

aux_test <- cor.test(datos_correlacion[, 1],datos_correlacion[,2],method="kendall")
test[cont_i]<- aux_test$statistic 
cont_i <- cont_i+1
test[cont_i]<- aux_test$p.value 
cont_i <- cont_i+1
test[cont_i]<- aux_test$estimate 
cont_i <- cont_i+1
aux_test
test
pvalores = test[2,]
p.adjust(pvalores, method="BY")