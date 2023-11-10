# Calcular el porcentaje de sujetos con estatura menor a 165
porcentaje_menor_165 <- (length(datos$Estatura[datos$Estatura < 165]) / length(datos$Estatura)) * 100

# Mostrar el resultado
cat("Porcentaje de sujetos con estatura menor a 165:", porcentaje_menor_165, "%\n")

# Crear un data frame con los resultados
resultados <- data.frame(Categoria = c("Menor a 165", "Mayor o igual a 165"), Porcentaje = c(porcentaje_menor_165, 100 - porcentaje_menor_165))

library(ggplot2)
# Crear un gráfico de torta
ggplot(resultados, aes(x = "", y = Porcentaje, fill = Categoria)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Porcentaje de Sujetos con Estatura Menor a 165", fill = "Categoría") +
  theme_void()