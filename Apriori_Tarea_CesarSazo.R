# APRIORI DE Personas
# Cesar Sazo
library(arules)
library(dplyr)

data <- read.csv('/home/cesarsazo/Documentos/R/db_csv_/PERSONA_BDP.csv', nrows=100000, sep = ",")
data <- data[,-1]
data <- data[,-1]
data <- data[,-1]
data <- data[,-7]
data <- data[, !(names(data) %in% c("VIVEHABGEO", "PEA", "POCUPA", "PEI"))]
reglas <- apriori(data, parameter = list(support=0.2, confidence=0.5))

inspect(reglas[0:100])

