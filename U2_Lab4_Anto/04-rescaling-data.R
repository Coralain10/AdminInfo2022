#R studio 2.6 no incluye scales,
#se siguió lo que indica su pagina https://scales.r-lib.org/
#e instalando el package tidyverse de https://ggplot2.tidyverse.org/
#install.packages("tidyverse")
install.packages("scales")
library(scales)
estudiantes <- read.csv("data-conversion.csv")
estudiantes$Income.rescaled <- rescale(estudiantes$Income)

#Valor reescalado = (Valor original – valor mínimo)/
#                   (Valor máximo – Valor mínimo)
(estudiantes$Income - min(estudiantes$Income)) / (max(estudiantes$Income) - min(estudiantes$Income))

rescale(estudiantes$Income, to = c(0,100))

rescalar.cols <- function(df, cols) {
  nombres <- names(df)
  for (col in cols) {
    nombre <- paste( nombres[col], 'rescaled', sep='.' )
    df[nombre] <- rescale( df[,col] )
  }
  cat( paste("Hemos reescalado", length(cols), " variables(s)") )
  df
}

estudiantes <- rescalar.cols(estudiantes, c(1,4))


