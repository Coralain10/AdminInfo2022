### Ejercicio 2

install.packages("XML")
library(XML)

catalog.url <- "data/cd_catalog.xml"
catalog.datos <- xmlToDataFrame(catalog.url)
