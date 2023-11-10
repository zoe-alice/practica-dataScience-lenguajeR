# Ejemplo de un dataframe de datos
datos <- data.frame(
  Nombre = c("Persona1", "Persona2", "Persona3", "Persona4", "Persona5"),
  Edad = c(25, 30, 22, 40, 35),
  Genero = c("Hombre", "Mujer", "Hombre", "Hombre", "Mujer"),
  Fuma = c(1, 0, 1, 0, 1)
)

# Contar cuántos sujetos son fumadores
fumadores <- sum(datos$Fuma == 1)

# Mostrar el resultado
cat("Número de fumadores:", fumadores, "\n")

# Calcular el número de fumadores y no fumadores
num_fumadores <- sum(datos$Fuma == 1)
num_no_fumadores <- sum(datos$Fuma == 0)

# Crear un vector con los datos
num_personas <- c(Fumadores = num_fumadores, NoFumadores = num_no_fumadores)

# Crear un gráfico de barras
barplot(num_personas, main="Número de Fumadores vs. No Fumadores", xlab="Estado de Fumador", ylab="Cantidad", col=c("red", "green"))

# Agregar etiquetas a las barras
text(1:2, num_personas, labels=num_personas, pos=3)