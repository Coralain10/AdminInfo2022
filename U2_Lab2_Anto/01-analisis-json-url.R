install.packages("jsonlite")
library(jsonlite)
usd.url <- "http://www.floatrates.com/daily/usd.json"
usd.pob <- fromJSON(usd.url)

# Creando dataframe vacío
usd.colnames <- names(usd.pob[[1]])
usd.data <- data.frame(matrix(ncol = length(usd.colnames), nrow = 0))
colnames(usd.data) <- usd.colnames

# insertando los datos en el dataframe
for (abr in names(usd.pob)) {
  dat <- usd.pob[[abr]]
  usd.data[nrow(usd.data) + 1,] = dat
}