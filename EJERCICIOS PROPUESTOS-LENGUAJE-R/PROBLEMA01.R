# Crear un conjunto de datos con los porcentajes
porcentajes <- data.frame(
  Genero = c("Mujeres", "Mujeres", "Hombres"),
  Fumar = c("No Fuman", "Fuman", "Fuman"),
  Porcentaje = c(19, 53.09, 100 - 19 - 53.09)
)

install.packages("ggplot2")

# Crear el gráfico de barras apiladas
library(ggplot2)

ggplot(porcentajes, aes(x = Genero, y = Porcentaje, fill = Fumar)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribución de Frecuencias Conjuntas",
       x = "Género",
       y = "Porcentaje") +
  scale_fill_manual(values = c("No Fuman" = "lightblue", "Fuman" = "orange")) +
  theme_minimal()
