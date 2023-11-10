
datos <- data.frame(
  Estatura = c(160, 170, 155, 180, 165, 175, 162, 185),
  Sexo = c("Mujer", "Hombre", "Mujer", "Hombre", "Mujer", "Hombre", "Mujer", "Hombre")
)

View(datos)

# Estatura mínima y máxima de todos los sujetos
estatura_minima <- min(datos$Estatura)
estatura_maxima <- max(datos$Estatura)

# Estatura mínima y máxima de los varones
estatura_minima_varones <- min(datos$Estatura[datos$Sexo == "Hombre"])
estatura_maxima_varones <- max(datos$Estatura[datos$Sexo == "Hombre"])

# Estatura mínima y máxima de las mujeres
estatura_minima_mujeres <- min(datos$Estatura[datos$Sexo == "Mujer"])
estatura_maxima_mujeres <- max(datos$Estatura[datos$Sexo == "Mujer"])

# Mostrar los resultados
cat("Estatura mínima de todos los sujetos:", estatura_minima, "\n")
cat("Estatura máxima de todos los sujetos:", estatura_maxima, "\n")
cat("Estatura mínima de los varones:", estatura_minima_varones, "\n")
cat("Estatura máxima de los varones:", estatura_maxima_varones, "\n")
cat("Estatura mínima de las mujeres:", estatura_minima_mujeres, "\n")
cat("Estatura máxima de las mujeres:", estatura_maxima_mujeres, "\n")

#mostramos los resultados enuna grafica
# primero Cargar la biblioteca ggplot2 para crear el gráfico
library(ggplot2)

# Crear un histograma de las estaturas
ggplot(datos, aes(x = Estatura)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  facet_wrap(~ Sexo, ncol = 2) +
  labs(title = "Distribución de Estaturas por Género", x = "Estatura", y = "Frecuencia")