calcular-pvalor <- function (datos_correclacion){
  
  test <- matrix(1:72, nrow=3)
  rownames(test) <- c("Statistic-z", "pvalor", "Estimates-tau")
  colnames(test) <- c("Alto-Demo","Alto-Afili","Alto-Visio","Alto-Coach","Alto-Pace","Alto-Comm","Medio-Demo","Medio-Afili","Medio-Visio","Medio-Coach","Medio-Pace","Medio-Comm","MedioB-Demo","MedioB-Afili","MedioB-Visio","MedioB-Coach","MedioB-Pace","MedioB-Comm","Bajo-Demo","Bajo-Afili","Bajo-Visio","Bajo-Coach","Bajo-Pace","Bajo-Comm")
  cont_i <-1
  for (i in 1:4){ 
    for (j in 5:10){ 
      aux_test <- cor.test(datos_correlacion[ ,i],datos_correlacion[ ,j],method="kendall")
      test[cont_i]<- aux_test$statistic 
      cont_i <- cont_i+1
      test[cont_i]<- aux_test$p.value 
      cont_i <- cont_i+1
      test[cont_i]<- aux_test$estimate 
      cont_i <- cont_i+1
      
    }
  }	
  return (test)
}
