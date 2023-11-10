# Datos de puntuaciones de la prueba
puntuaciones <- c(85, 92, 78, 90, 88, 76, 89, 94, 82, 77)

# Medidas de tendencia central
media <- mean(puntuaciones)
mediana <- median(puntuaciones)
moda <- table(puntuaciones)
moda <- as.numeric(names(moda)[which.max(moda)])

# Medidas de dispersión
desviacion_estandar <- sd(puntuaciones)
rango <- max(puntuaciones) - min(puntuaciones)
cuartiles <- quantile(puntuaciones)

# Mostrar los resultados
cat("Media (promedio):", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Moda:", moda, "\n")
cat("Desviación Estándar:", desviacion_estandar, "\n")
cat("Rango:", rango, "\n")
cat("Cuartiles:", cuartiles, "\n")


# Cargar la biblioteca ggplot2
library(ggplot2)

# Datos de puntuaciones de la prueba
puntuaciones <- c(85, 92, 78, 90, 88, 76, 89, 94, 82, 77)

# Crear un histograma
histogram_plot <- ggplot(data.frame(Puntuaciones = puntuaciones), aes(x = Puntuaciones)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Puntuaciones",
       x = "Puntuaciones", y = "Frecuencia")

# Crear un diagrama de caja (boxplot)
boxplot_plot <- ggplot(data.frame(Puntuaciones = puntuaciones), aes(y = Puntuaciones)) +
  geom_boxplot(fill = "green", color = "black") +
  labs(title = "Diagrama de Caja (Boxplot)",
       y = "Puntuaciones")

# Muestra los gráficos
print(histogram_plot)
print(boxplot_plot)






