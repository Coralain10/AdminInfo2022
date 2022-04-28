# Caso#2
rand.valor <- function(x) {
  #recibe vector de valores
  faltantes <- is.na(x) #vector booleano
  tot.faltantes <- sum(faltantes) #cant faltantes
  x.obs <- x[!faltantes] #valores de fila != a NA
  valorado <- x #valores iniciales de x
  valorado[faltantes] <- sample(x.obs, tot.faltantes, replace = TRUE)
  return(valorado)
}
random.df <- function(df,cols) { #cols = nombre de cols
  nombres <- names(df) #nombres de todas las cols
  for (col in cols) {
    nombre <- paste(nombres[col], "valorado", sep=".")
    df[nombre] <- rand.valor(df[,col])
  }
  df
}

data.limpio <- random.df(data, c(1,2))

