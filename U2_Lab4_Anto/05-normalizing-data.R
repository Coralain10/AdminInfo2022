casas <- read.csv("BostonHousing.csv")

#Caso#1: Normalización ajustando al promedio y desviación típica
casas.z <- scale(casas)

#Caso #2: Normalización ajustando al promedio (center = TRUE y scale = FALSE)
casas.mean <- scale(casas, center = TRUE, scale = FALSE)

#Caso #3: Normalización ajustando a la desviación típica o estándar (center = FALSE y scale = TRUE)
casas.sd <- scale(casas, center = FALSE, scale = TRUE)

normalizar.cols <- function(df, cols) {
  nombres <- names(df)
  for (col in cols) {
    nombre <- paste(nombres[col], "z", sep = ".")
    df[nombre] <- scale(df[,col])
  }
  cat( paste("Hemos normalizado ", length(cols), " variable(s)") )
  df
}

# Normalizamos con esta función, las variables 1, 3 y de la 5 a la 8 del dataframe original casas
casas <- normalizar.cols(casas, c(1,3,5:8))




