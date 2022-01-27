library(SixSigma)

# lançamento de 4 protótipos diferentes a 2 metros de altura
dados <- read.csv("estudo_capacidade.csv", header = TRUE, sep = ",")

# ss.ca.cp(dados$prototipo1, LSL = 1.1, USL = 1.7)
#ss.ca.cpk(dados$prototipo1, LSL = 1.1, USL = 1.7)
ss.study.ca(dados$prototipo1, LSL = 1.1, USL = 1.7, Target = 1.4)

#ss.ca.cp(dados$prototipo2, LSL = 1.1, USL = 1.7)
#ss.ca.cpk(dados$prototipo2, LSL = 1.1, USL = 1.7)
ss.study.ca(dados$prototipo2, LSL = 1.1, USL = 1.7, Target = 1.4)

#ss.ca.cp(dados$prototipo3, LSL = 1.1, USL = 1.7)
#ss.ca.cpk(dados$prototipo3, LSL = 1.1, USL = 1.7)
ss.study.ca(dados$prototipo3, LSL = 1.1, USL = 1.7, Target = 1.4)

#ss.ca.cp(dados$prototipo4, LSL = 1.1, USL = 1.7)
#ss.ca.cpk(dados$prototipo4, LSL = 1.1, USL = 1.7)
ss.study.ca(dados$prototipo4, LSL = 1.1, USL = 1.7, Target = 1.4)

# lançamento do protótipo 3 a 2.13 metros de altura
dados2 <- read.csv("estudo_capacidade2.csv", header = TRUE, sep = ",")
ss.study.ca(dados2$prototipo3, LSL = 1.1, USL = 1.7, Target = 1.4)

# lançamento do protótipo 3 a 1.877 metros de altura
dados3 <- read.csv("estudo_capacidade3.csv", header = TRUE, sep = ",")
ss.study.ca(dados3$prototipo3, LSL = 1.1, USL = 1.7, Target = 1.4)

# lançamento do protótipo 3 a 1.857 metros de altura
dados4 <- read.csv("estudo_capacidade4.csv", header = TRUE, sep = ",")
ss.study.ca(dados4$prototipo3, LSL = 1.1, USL = 1.7, Target = 1.4)

# lançamento do protótipo 3 a 2 metros de altura
dados5 <- read.csv("estudo_capacidade5.csv", header = TRUE, sep = ",")
ss.study.ca(dados5$prototipo2, LSL = 1.1, USL = 1.7, Target = 1.4)

