# Crear un dataframe con datos hipotéticos
datos <- data.frame(
  Sujeto = 1:100,  # Números de sujetos
  Extraversion = sample(1:5, 100, replace = TRUE),  # Valores de extraversión (1-5)
  Responsabilidad = sample(1:5, 100, replace = TRUE),  # Valores de responsabilidad (1-5)
  EstabilidadEmocional = sample(1:5, 100, replace = TRUE),  # Valores de estabilidad emocional (1-5)
  Sinceridad = sample(1:5, 100, replace = TRUE)  # Valores de sinceridad (1-5)
)

# Calcular las medias para cada característica
medias <- sapply(datos[, -1], mean)

# Encontrar la menor puntuación de extraversión
menor_extraversion <- min(datos$Extraversion)

# Encontrar la menor puntuación de responsabilidad
menor_responsabilidad <- min(datos$Responsabilidad)

# Encontrar la menor puntuación de estabilidad emocional
menor_estabilidad_emocional <- min(datos$EstabilidadEmocional)

# Encontrar la menor puntuación de sinceridad
menor_sinceridad <- min(datos$Sinceridad)

# Mostrar los resultados
cat("Menor puntuación en Extraversión: ", menor_extraversion, "\n")
cat("Menor puntuación en Responsabilidad: ", menor_responsabilidad, "\n")
cat("Menor puntuación en Estabilidad Emocional: ", menor_estabilidad_emocional, "\n")
cat("Menor puntuación en Sinceridad: ", menor_sinceridad, "\n")