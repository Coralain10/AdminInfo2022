## LECTURA DE TABLAS INCRUSTADAS EN ARCHIVOS HTML
#01-analisis-html
library(XML)

wpob.url <- "data/WorldPopulation-wiki.html"
tablas <- readHTMLTable(wpob.url)
most_wpob <- tablas[[5]]
head(most_wpob,3)
tabla_unica <- readHTMLTable(wpob.url, which = 5)
