
#UTILIZANDO VECTORES PARA ORDENAR CARACTERES
estado<-c("tas","ban","qls","nsd","nt","sa","act")
factorEstado<-factor(estado)
factorEstado
#se puede utilizar levels() para ver los niveles de un factor
levels(factorEstado)
#UTILIZANDO LA FUNCION tapply()
#arreglo, vector, array, lista, matriz
#supongamos que tenemos otro vector de los ingresos
#de las mismas personas
ingresos<-c(60,50,80,30,20,40,45)
mediaIngresos<-tapply(ingresos,factorEstado, mean)
mediaIngresos
