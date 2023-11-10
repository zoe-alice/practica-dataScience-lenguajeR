
#ingresando edades de los estudiantes
edad<-c(19,20,22,32,27,25,21,20,22,21,20,19,24,20,22,21,25,22,20,21)
#frecuencia absoluta
x=table(edad)
x
#frecuencia relativa
x/20

#construccion de grafico circular
slices=c(2,  5,  4,  4,  1,  2,  1,  1)
lbls=c('19',   '20',   '21',   '22',   '24',   '25',   '27',   '32' )
pie(slices, labels=lbls,main ="Diagrama circular de edades")
#construccion de grafico de barras

cant=c(2,  5,  4,  4,  1,  2,  1,  1)
edad=c('19',   '20',   '21',   '22',   '24',   '25',   '27',   '32' )
barplot(cant,names.arg=edad,main="Diagrama de barras de edades")