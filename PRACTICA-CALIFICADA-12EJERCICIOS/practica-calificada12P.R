
#PRACTICA CALIFICADA
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 01:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lista de notas de los 40 alumnos (debes reemplazar estas notas con las reales)
notas <- c(1, 7, 9, 2, 5, 4, 4, 3, 7, 8, 4, 5, 6, 7, 6, 4, 3, 1, 5, 9, 2, 6, 4, 6, 5, 2, 2, 8, 3, 6, 4, 5, 2, 4, 3, 5, 6, 5, 2, 4)
cantNotas <- length(notas)

# Calcula la suma de todas las notas
suma_notas <- sum(notas)

# Calcula la nota media
nota_media <- suma_notas / cantNotas

# Imprime la nota media
cat("LA NOTA MEDIA ES: ",nota_media )

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 02:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

medidas<-c(167, 159, 168, 165, 150, 170, 172, 158, 163, 156,
           151, 173, 175, 164, 153, 158, 157, 164, 169, 163,
           160, 159, 158, 174, 164)
medidas

# Crear un histograma con intervalos de 5 cm
histogram <- hist(medidas, breaks = seq(150, 180, by = 5), plot = FALSE)

# Crear una tabla de frecuencias
tabla_frecuencias <- data.frame(
  Altura = histogram$mids,
  Frecuencia_Absoluta = histogram$counts,
  Frecuencia_Relativa = histogram$counts / length(medidas),
  Porcentaje = (histogram$counts / length(medidas)) * 100
)

# Mostrar la tabla de frecuencias
print(tabla_frecuencias)

# Crear un gráfico de barras
barplot(tabla_frecuencias$Frecuencia_Absoluta, names.arg = tabla_frecuencias$Altura, xlab = "Altura (cm)", ylab = "Frecuencia Absoluta", col = "orange", main = "Histograma de Alturas")


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 03:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

matematica <- data.frame(
  calificacion = c(0.1, 1.2, 2.3, 3.4, 4.5, 5.6, 6.7, 7.8, 8.9, 9.10),
  numAlumnos = c(2, 2, 3, 6, 7, 6, 1, 1, 1, 1)
)

# Calcular la varianza
varianza <- sum((matematica$calificacion^2) * matematica$numAlumnos) / sum(matematica$numAlumnos) - (sum((matematica$calificacion * matematica$numAlumnos) / sum(matematica$numAlumnos))^2)

# Calcular la desviación típica (raíz cuadrada de la varianza)
desviacion_tipica <- sqrt(varianza)

# Mostrar la varianza y desviación típica
cat("Varianza:", varianza, "\n")
cat("Desviación Típica:", desviacion_tipica, "\n")

# Crear un gráfico de barras
barplot(matematica$numAlumnos, names.arg = matematica$calificacion, xlab = "Calificación", ylab = "Número de Alumnos", col = "cyan", main = "Distribución de Calificaciones")

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 04:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

edades <- c(14, 14, 15, 13, 15, 14, 14, 14, 14, 15, 13, 14, 15, 16, 14, 15, 13, 14, 15, 13, 14, 14, 14, 15, 14)

# Calcular la frecuencia absoluta
frec_absoluta <- table(edades)

# Calcular la frecuencia absoluta acumulada
frec_absoluta_acumulada <- cumsum(frec_absoluta)

# Calcular las frecuencias relativas acumuladas
frec_relativa_acumulada <- cumsum(frec_absoluta) / length(edades)

# Crear un histograma
hist(edades, breaks = seq(12.5, 16.5, by = 1), main = "Histograma de Edades",
     xlab = "Edades", ylab = "Frecuencia", col = "lightblue", border = "black")

# Agregar líneas de frecuencia absoluta acumulada
lines(seq(12.5, 16.5, by = 1), frec_absoluta_acumulada, type = "s", col = "blue")

# Agregar líneas de frecuencia relativa acumulada
lines(seq(12.5, 16.5, by = 1), frec_relativa_acumulada, type = "s", col = "red")

# Agregar una leyenda
legend("topright", legend = c("Frec. Absoluta Acumulada", "Frec. Relativa Acumulada"), col = c("blue", "red"), lty = 1)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 05:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Datos
datos <- c(4, 7, 5, 3, 6)

# Calcular la varianza
varianza <- var(datos)

# Calcular la desviación estándar
desviacion_estandar <- sqrt(varianza)

# Mostrar los resultados
cat("Varianza:", varianza, "\n")
cat("Desviación Estándar:", desviacion_estandar, "\n")

# Crear un histograma
hist(datos, main = "Histograma de Datos", xlab = "Valores", ylab = "Frecuencia", col = "lightblue", border = "black")

# Agregar una línea vertical en la media
abline(v = mean(datos), col = "red", lty = 2)

# Agregar una leyenda
legend("topright", legend = c("Varianza", "Desviación Estándar", "Media"), col = c("blue", "green", "red"), lty = c(1, 1, 2))



#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 06:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

hijos<-data.frame(
  estado=c('andalucia', 'aragon', 'asturas', 'baleares',
          'canarias', 'cantabria', 'castilla-leon', 'lamancha', 'cataluña',
          'valenciana', 'extremadura', 'galicia', 'madrid', 'murcia',
          'navarra', 'vasco', 'rioja', 'ceuta'),
  numHijos=c(1.28, 1.05, 0.8, 1.44, 1.24, 0.94, 1.91,
            1.24, 1.21, 1.17, 1.2, 0.9, 1.19, 1.41,
            1.7, 0.97, 1.12, 1.87)
)

# Calcular el número medio de hijos por mujer en 1998 en España
numero_medio_hijos <- mean(hijos$numHijos)

# Mostrar el resultado
cat("Número medio de hijos por mujer en 1998 en España:", numero_medio_hijos, "\n")

# Crear un gráfico de barras
barplot(hijos$numHijos, names.arg = hijos$estado, xlab = "Comunidades Autónomas", ylab = "Número de Hijos", col = "lightblue", border = "black", las = 2, cex.names = 0.7, main = "Número de Hijos por Comunidad Autónoma en 1998")




#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 07:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x <- c(2, 4, 6, 8, 10, 12, 14)
f <- c(12, 10, 8, 7, 5, 8, 10)

# Crear un dataframe
df <- data.frame(x, f)

# Calcular el percentil P65
percentil_65 <- quantile(rep(df$x, df$f), probs = 0.65)

# Mostrar el percentil P65
cat("Percentil P65:", percentil_65, "\n")

# Crear un gráfico de barras
barplot(df$f, names.arg = df$x, xlab = "Valores", ylab = "Frecuencia", col = "lightblue", border = "black", las = 2, cex.names = 0.7, main = "Gráfico de Barras de Frecuencia")

# Agregar una línea vertical en el percentil P65
abline(v = percentil_65, col = "red", lwd = 2)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 08:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

datosViajeros <- data.frame(
  mes = c('enero', 'febrero', 'marzo', 'abril', 'mayo',
          'junio', 'julio', 'agosto', 'setiembre',
          'octubre', 'noviembre', 'diciembre'),
  viajeros = c(2775738, 3205892, 4143343, 4931385,
               5724555, 5834331, 6415298, 6986211,
               6349504, 5447890, 3570715, 3204082)
)

# Calcular la media de viajeros
media_viajeros <- mean(datosViajeros$viajeros)

# Calcular la desviación típica
desviacion_tipica <- sd(datosViajeros$viajeros)

# Mostrar la media y la desviación típica
cat("Media de viajeros:", media_viajeros, "\n")
cat("Desviación Típica:", desviacion_tipica, "\n")

# Toma de decisión
if (desviacion_tipica <= 0.10 * media_viajeros) {
  cat("La media es representativa de todos los meses del año.")
} else {
  cat("La media no es representativa de todos los meses del año.")
}


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 09:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

datos<-data.frame(
  sector=c('inductria', 'construccion', 'servicios'),
  varones=c(284.363, 214.446,263.554 ),
  mujeres=c(206.204, 205.372, 195.447)
)

View(datos)

# Convertir el dataframe a un formato largo (tidy)
library(ggplot2)
#instalar el paquete tidyr
install.packages("tidyr")
library(tidyr)
datos_long <- pivot_longer(datos, cols = -sector, names_to = "sexo", values_to = "ganancias")

# Crear el gráfico de barras
ggplot(datos_long, aes(x = sector, y = ganancias, fill = sexo)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Ganancias Medias de Trabajadores por Sector y Sexo (Cuarto Trimestre 1999)",
    x = "Sector",
    y = "Ganancias Medias"
  ) +
  scale_fill_manual(values = c("varones" = "blue", "mujeres" = "pink")) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  guides(fill = guide_legend(title = "Sexo"))


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 10:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

diagrama<-data.frame(
  procedencia=c('europa', 'amrica', 'asia', 'africa', 'oceania', 'desconocida'),
  dato<-c(353.556, 166.709, 66.340, 213.012, 1.013, 699)
)

# Crear el gráfico de sectores
ggplot(diagrama, aes(x = "", y = dato, fill = procedencia)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set3") +
  theme_minimal() +
  labs(title = "Procedencia de los Extranjeros Residentes en España (Diciembre 1999)", fill = "Procedencia") +
  theme(legend.position = "right")




#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 11:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Crear un marco de datos con los datos corregidos
datos <- data.frame(
  ciudad = c("Japón", "Brasil", "EE. UU.", "México", "India", "China", "EE. UU. (Los Ángeles)", "China (Pekín)", "India", "Corea del Sur"),
  hab_enMillones = c(26.8, 16.4, 16.3, 15.6, 15.1, 15.1, 12.4, 12.4, 11.7, 11.6)
)

# Ordenar los datos por población en orden descendente
datos <- datos[order(-datos$hab_enMillones),]

# Crear el gráfico de barras
ggplot(datos, aes(x = ciudad, y = hab_enMillones, fill = ciudad)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Ciudades más Pobladas en 2023", x = "Ciudad", y = "Población (en millones)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#EJERCICIO 12:
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

datos<-data.frame(
  part_Politicos=c('PP', 'PSOE', 'CIU', 'IU', 'EAJ-PNV', 'CC', 'OTROS'
  ),
  escaños=c(183, 125, 15, 8, 7, 4, 8)
)

# Crear el gráfico de sectores
ggplot(datos, aes(x = "", y = escaños, fill = part_Politicos)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_void() +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Distribución de Escaños en las Elecciones a Cortes Generales (2000)", fill = "Partidos Políticos") +
  theme(legend.position = "right")


