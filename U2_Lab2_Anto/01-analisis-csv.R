## EXTRACCIÓN DE DATOS DESDE UN CSV
#01-analisis-csv

auto <- read.csv("data/auto-mpg.csv", header=TRUE, sep=",")
# str(auto)
# head(auto,4)
names(auto)
