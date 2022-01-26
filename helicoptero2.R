library(SixSigma)

# lançamento a 1.47 m com braco apoiado na caixa segurando o prototipo pelo clipe 
dados <- read.csv("helicoptero2.csv", header = TRUE, sep = ";")
ss.rr(var = tempo.medio, part = protótipo , appr = operador, data = dados)
boxplot(dados$tempo.medio ~ dados$protótipo)

dados.prototipo = split(dados, f = dados$protótipo)
sd(dados.prototipo$`1`$tempo.medio)
sd(dados.prototipo$`2`$tempo.medio)
sd(dados.prototipo$`3`$tempo.medio)
sd(dados.prototipo$`4`$tempo.medio)


# relançamento de mateus do terceiro prototipo
dados2 <- read.csv("helicoptero2corrigido.csv", header = TRUE, sep = ";")
ss.rr(var = tempo.medio, part = protótipo , appr = operador, data = dados2)

########################################## helicoptero 3

# lançamento de mateus e anderson (os dois medindo tempo) 1.50, com anteparo segurando pela helice

dados3 <- read.csv("helicoptero3.csv", header = TRUE, sep = ";")
ss.rr(var = tempo.medio, part = prototipo , appr = operador, data = dados3)


#############

anova(lm(tempo.medio ~ prototipo + operador +
           prototipo * operador,
         data = dados3))

anova(lm(tempo.medio ~ protótipo + operador +
           protótipo * operador,
         data = dados))
