install.packages("jsonlite")
library(jsonlite)
students.url <- "data/students.json"
students.pob <- fromJSON(students.url)
std_courses.url <- "data/student-courses.json"
std_courses.pob <- fromJSON(std_courses.url)
