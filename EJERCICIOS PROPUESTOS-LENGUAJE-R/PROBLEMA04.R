# Crear un conjunto de datos de ejemplo (reemplaza con tus propios datos)
datos <- data.frame(
  Estatura = c(160, 170, 155, 180, 165, 175, 162, 185),
  Peso = c(60, 70, 55, 80, 65, 75, 62, 85)
)

# Calcular la media de la variable "estatura"
media_estatura <- mean(datos$Estatura)

# Calcular la media de la variable "peso"
media_peso <- mean(datos$Peso)

# Mostrar los resultados
cat("Valor central de la estatura:", media_estatura, "\n")
cat("Valor central del peso:", media_peso, "\n")

# Crear un data frame con los valores centrales
valores_centrales <- data.frame(Variable = c("Estatura", "Peso"), Media = c(media_estatura, media_peso))

# Crear un gráfico de barras
ggplot(valores_centrales, aes(x = Variable, y = Media)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Valores Centrales de Estatura y Peso", y = "Media") +
  theme_minimal()


# Ordenar el conjunto de datos por la variable "Peso"

datos_ordenados <- datos[order(datos$Peso), ]

# Calcular el percentil 15 para la variable "Peso"
percentil_15 <- quantile(datos_ordenados$Peso, probs = 0.15)

# Mostrar el valor del peso que es superado por el 15 % de la muestra
cat("El peso superado por el 15 % de la muestra es:", percentil_15, "\n")