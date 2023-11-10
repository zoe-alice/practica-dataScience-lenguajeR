# Supongamos que tienes un dataframe llamado 'datos' con las puntuaciones de experiencia
datos <- data.frame(
  Solicitante = 1:15,  # Números de los solicitantes
  Experiencia = c(65, 73, 50, 58, 72, 78, 64, 68, 55, 80, 62, 70, 49, 77, 59)  # Puntuaciones de experiencia
)

# Filtrar solicitantes con puntuación de experiencia mínima de 52 en responsabilidad
solicitantes_seleccionados <- subset(datos, Experiencia >= 52)

# Contar cuántos solicitantes cumplen con el criterio
numero_seleccionados <- nrow(solicitantes_seleccionados)

# Mostrar el número de solicitantes seleccionados
cat("Número de solicitantes seleccionados: ", numero_seleccionados, "\n")

# Cargar la biblioteca ggplot2
library(ggplot2)

# Crear un dataframe para el número de solicitantes seleccionados
solicitantes_data <- data.frame(
  Criterio = c("Cumplen", "No Cumplen"),
  Cantidad = c(numero_seleccionados, 15 - numero_seleccionados)  # Total de solicitantes menos los seleccionados
)

# Crear el gráfico de barras
ggplot(solicitantes_data, aes(x = Criterio, y = Cantidad, fill = Criterio)) +
  geom_bar(stat = "identity") +
  labs(title = "Número de Solicitantes Seleccionados", x = "Cumplen con el criterio", y = "Cantidad") +
  theme_minimal()  # Personaliza el estilo del gráfico si lo deseas
