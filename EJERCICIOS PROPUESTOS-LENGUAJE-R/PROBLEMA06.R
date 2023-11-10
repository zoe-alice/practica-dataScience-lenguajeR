#problema-nº06:

#creamos un dataframe
datos<-data.frame(
  nombre=c('xiomara', 'mauro', 'never', 'giuan', 'juan', 'pedro', 'lucia', 'jimena', 'flor', 'pablo', 'matias', 'fernanda', 'alicia', 'fiorela', 'omar', 'janet', 'ferny', 'marlo'),
  edad=c(15, 14, 19, 27, 29, 40, 18, 24, 13, 41, 23, 20, 16, 34, 28, 15, 25, 32),
  estado=c('california', 'texas', 'california', 'nevada', 'virginia', 'texas', 'texas', 'nevada', 'california', 'virginia', 'california', 'nevada', 'miami', 'california', 'virginia', 'california', 'texas','california')
  
)
# contar cuantos sujetos pertenecen al estado de california
personas_california<-sum(datos$estado == "california")
#mostramos el resultado
cat("Numero de personas de california: ", personas_california, "\n")

# Cargar la biblioteca ggplot2
library(ggplot2)

# Crear un resumen de los datos
resumen <- table(datos$estado)

# Crear un gráfico de torta con porcentajes
ggplot(data = datos, aes(x = "", fill = estado)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(label = scales::percent((..count..)/sum(..count..))), stat = "count", position = position_stack(vjust = 0.5)) +
  scale_fill_brewer(palette = "Set3") +
  theme_minimal() +
  labs(title = "Distribución de Estados", fill = "Porcentaje") +
  theme(legend.position = "right")