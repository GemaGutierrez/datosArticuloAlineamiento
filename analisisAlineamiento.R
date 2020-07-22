# 1 es el democratic y 6 es el commanding #Pearson
x=1:6
y=c(25.5, 34.1, 39.0, 33.3, 57.1, 54.5)
cor(x,y) #pearson
cor.test(x,y)

cor.test(x,y, method="spearman")


       
x=c(25.5, 34.1, 39.0, 33.3) # flexibles
y=c(57.1, 54.5) #autoritarios
wilcox.test(y,x, paired = F, alternative = "greater")

