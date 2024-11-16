# Tarea 5
# Decision Tree
# Cesar Sazo
library(rpart)
library(rpart.plot)

hogar <- read.csv('/home/cesarsazo/Documentos/R/db_csv_/HOGAR_BDP.csv', sep = ',')

arbol1 <- rpart(AREA ~ PCH1 + PCH2 + PCH3 + PCH6 + PCH9_A + PCH9_B + PCH15,
                data = hogar,
                method = "class",
                control = rpart.control(cp = 0.01, xval = 10))

rpart.plot(
  arbol1,
  type = 4,
  extra = 101,
  under = TRUE,
  fallen.leaves = TRUE,
  box.palette = "BuGn",
  main = "Prediccion de area",
  cex = 1.2,
  cex.main = 1.5,
  shadow.col = "gray"
)

arbol2 <- rpart(
  DEPARTAMENTO ~ AREA + PCH10 + PCH8 + PCH9_A + PCH9_B + PCH9_C + PCH9_D + PCH9_E + PCH9_F + PCH15,
  data = hogar,
  method = "class"
)

rpart.plot(
  arbol2,
  type = 4,
  extra = 101,
  under = TRUE,
  fallen.leaves = TRUE,
  box.palette = "BuGn",
  main = "Prediccion de departamento",
  cex = 1.2,
  cex.main = 1.5,
  shadow.col = "gray"
)

