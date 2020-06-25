datos_correlacion <- read.csv2("datos-encuesta.csv", header = FALSE)
source("calcular-pvalor.R")
calcular_valor (datos_correlacion)

