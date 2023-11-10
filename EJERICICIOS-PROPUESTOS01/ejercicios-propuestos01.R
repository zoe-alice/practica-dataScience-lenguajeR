#EJERCICIOS001: CON LISTAS - FOR
nombres<-c('juan', 'maria', 'pedro', 'jose')
for(i in nombres){
  print(i)
}
#imprimir solo un nombre del item-1
print(nombres[1])

#EJERCICIO 02: USANDO LA LISTA ANTERIOR
#IMPRIMIR SOLO LOS NOMBRES QUE CONTENGAN LA LETRA "J"

nombres<-c('juan', 'maria', 'pedro', 'jose')
for (nombre in nombres){
  if('j'%in% strsplit(nombre,'')[[1]])
  {
    result=paste("EL NOMBRE", nombre, "tiene la letra [j] \n")
    cat(result)
   # cat("EL NOMBRE", nombre, "tiene la letra [j] \n")
  }
}

#EJERCICIO 03: CREAR UNA LISTA DE ANIMALES, LUEGO IMPRIMIR
#CUAL ES LA LONGITUD DE CADA NOMBRE
animales<-c('gato', 'perro', 'vaca', 'caballo')
#utilizamos la funcion lapply
longitudNombres<-lapply(animales, nchar)
print(longitudNombres)

#EJERCICIO 04: RECORRER LA LISTA CON UN INDICE Y LUEGO IMPRIMIRLOS
animales<-c('gato', 'perro', 'vaca', 'caballo')
for(i in 1:length(animales)){
  print(animales[i])
}

#EJERCICIO 05:  CREAR  UNA LISTA DE NOTAS, Y MOSTRAR LA MEDIA ARITMETICA
notas=c(12, 10, 18, 15, 11)
suma=0
for(n in notas){
  suma=suma+n
  
}
mediaAritmetica=suma/length(notas)
cat("LA MEDIA ARITMETICA ES: ",mediaAritmetica)
cat("LA MAXIMa NOTA ES", max(notas))
cat("LA MINIMA NOTA ES", min(notas))


#EJERCICIO 06:  CREAR  UNA LISTA DE NOTAS, CLASIFICAR LAS NOTAS
#EN 3 CATEGORIAS: BUENO(17-20) - REGULAR(11-16) - DEFICIENTE(0-10)
notas=c(14, 10, 18, 15, 11, 20, 15, 8,5,13)
b=0
d=0
r=0
categoria=''
for(n in notas){
  if(n>0 && n<11){
   
    
    d=d+1
  }else if(n>10 && n<17){
    categoria="REGULAR"
    
    r=r+1
  }else{
    categoria="BUENO"
    cat("nota: ", n, " ")
    b=b+1
  }
}

cat("NUMERO DE ALUMNOS BUENOS: ", b)
cat("NUMERO DE ALUMNOS REGULARES: ", r)
cat("NUMERO DE ALUMNOS DEFICIENTES: ", d)


#EJERCICIO 07: SE TIENE UN CONJUTO DE NOTAS, SE PIDE CLASIFICAR EN 3 CATEGORIA
#LUEGO MOSTRARLO MEDIANTE UN GRAFICO
notas=c(14, 10, 18, 15, 11, 20, 15, 8,5,13)
b=0
d=0
r=0
categoria=''
for(n in notas){
  if(n>0 && n<11){
    
    
    d=d+1
  }else if(n>10 && n<17){
    categoria="REGULAR"
    
    r=r+1
  }else{
    categoria="BUENO"
   # cat("nota: ", n, " ")
    b=b+1
  }
}
cat("NUMERO DE ALUMNOS BUENOS: ", b)
cat("NUMERO DE ALUMNOS REGULARES: ", r)
cat("NUMERO DE ALUMNOS DEFICIENTES: ", d)
#contruyendo grafico circular
slices=c(b, r, d)
lbls=c('BUENO', 'REGULAR', 'DEFICIENTE')
pie(slices, labels=lbls,main ="Diagrama circular de NOTAS")

#EJERCICIO 08: EN UN CONJUNTO DE PAISES, IMPRIMIR SOLO
#DEL ITEM 5 HASTA EL ULTIMO
paises<-c('peru', 'brasil', 'paragual', 'bolivia', 'bali', 'congo', 'españa', 'urss', 'italia')
result=paises[5:length(paises)]
cat(result)

#*********MATRICES01 *************
num<-matrix(1:12, nrow=4, ncol=3)
num
#*********MATRICES02 *************
x<-matrix(1:8, nrow = 4, ncol=4)
x
#*********MATRICES02-1 *************
x<-matrix(1:8, nrow = 4, ncol=4, byrow=TRUE)
x
#*********FACTORES *************

num=c(2, 5, 3, 7, 2, 4, 5, 7)
valfac=factor(num)
valfac
#muestra los niveles
levels(valfac)


#****** DATA FRAMES *********
options(stringsAsFactors=FALSE)
df<-data.frame(numbers=c(10,20,30,40), text=c('a','b','c','d'))
df
df$text

options(stringsAsFactors = TRUE)
df<-data.frame(numbers=c(10,20,30,40), text=c('a','b','c','d'))
df
df$text



