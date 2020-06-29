datos_correlacion <- read.csv2("datos-encuestaMarquet.csv", header = FALSE)
test <- matrix(1:3, nrow=3)
aux_test <- matrix(1:3, nrow=3)
rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
colnames(test) <- c("AltaAutoorg","BajaAutoorg")
cont_i <-1
for (i in 1:4){ 
  for (j in 5:10){ 
    aux_test <- cor.test(datos_correlacion[, i],datos_correlacion[,j],method="kendall")
    test[cont_i]<- aux_test$statistic 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$p.value 
    cont_i <- cont_i+1
    test[cont_i]<- aux_test$estimate 
    cont_i <- cont_i+1
  }
}
test
pvalores = test[2,]
p.adjust(pvalores, method="BY")
