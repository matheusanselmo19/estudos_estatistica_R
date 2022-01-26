dados <- read.csv("exerc2020-1.csv", header = TRUE, sep = ",")

dados.equip <- dados %>%
  group_by(tipoequip) %>%
  summarise(across(dados, list(sum = sum)))

names(dados.equip$dados_sum) <- c("DDL","OGB","PS","PA","ROBO","TREB")

png("tempo_falha_total.png")
pareto.chart(dados.equip$dados_sum,main = "Tempo de Falhas - Total", ylab = "Tempo (min)",  cumperc = c(0,20,40,60,80,100))
dev.off()

dados.mes <- split(dados, f=factor(dados$mês))

dados.count1 <- dados.mes$"1" %>%
  count(tipoequip)
a <- dados.count1$n
names(a) <- c("DDL","OGB","PS","PA","ROBO","TREB")

dados.count2 <- dados.mes$"2" %>%
  count(tipoequip)
b <- dados.count2$n
names(b) <- c("DDL","OGB","PA","ROBO")

dados.count3 <- dados.mes$"3" %>%
  count(tipoequip)
c <- dados.count3$n
names(c) <- c("DDL","OGB","PA")

png("quantidades_mes1.png")
pareto.chart(a,main = "Quantidade de Falhas - Mês 1", ylab = "Falhas",  cumperc = c(0,20,40,60,80,100))
dev.off()

png("quantidades_mes2.png")
pareto.chart(b,main = "Quantidade de Falhas - Mês 2", ylab = "Falhas",  cumperc = c(0,20,40,60,80,100))
dev.off()

png("quantidades_mes3.png")
pareto.chart(c,main = "Quantidade de Falhas - Mês 3", ylab = "Falhas",  cumperc = c(0,20,40,60,80,100))
dev.off()

dados.count <- dados %>%
  count(tipoequip)
d <- dados.count$n
names(d) <- c("DDL","OGB","PS","PA","ROBO","TREB")

png("quantidades_falhas_total.png")
pareto.chart(d,main = "Quantidade de Falhas - Total", ylab = "Falhas",  cumperc = c(0,20,40,60,80,100))
dev.off()
