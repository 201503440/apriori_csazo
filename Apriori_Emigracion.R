library(arules)
library(dplyr)

data <- read.csv('C:\\Users\\65826\\Documents\\U\\Censo2018\\db_csv_\\MIGRACION_BDP.csv', sep = ",")

reglas <- apriori(data, parameter = list(support=0.2, confidence=0.5))

inspect(reglas[0:100])
inspect(reglas[100:200])
