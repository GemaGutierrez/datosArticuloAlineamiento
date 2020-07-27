#datos_correlacion <- read.csv2("datos-encuesta-Autonom-Alineam.csv", header = FALSE)
datos_correlacion <- read.csv2("datos-encuesta-Autonom-Alineam2.csv", header = FALSE)
aux_test <- cor.test(datos_correlacion[, 1],datos_correlacion[,2],method="kendall")
aux_test

#pvalores = aux_test[2,]
#p.adjust(pvalores, method="BY")