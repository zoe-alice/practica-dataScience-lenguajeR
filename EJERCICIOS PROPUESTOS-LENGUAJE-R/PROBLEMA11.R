result<-c('A', 'A', 'B', 'I', 'M', 'R', 'B', 'M', 'M', 'M')
#frecuencia absoluta(el numero de categorias q existe)
#ejemplo: A=2, B=2, I=1, M=4, R=1
x=table(result)
result
#frecuencia relativa
x/10
#construccion de grafico circular
slices=c(2,2,1,4,1)
lbls=c('alto','bueno','regular','medio','insuficiente')
pie(slices, labels=lbls, main="Diagrama circular de calificaciones")
#construyendo el diagrama de barras
nota=c(17,15,13,11,5)
clasificacion=c('alto','bueno','regular','medio','insuficiente')
barplot(nota,names.arg=clasificacion,main="Diagrama de barras de calificaciones")