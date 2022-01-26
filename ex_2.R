library(qcc)
failure.time <- c(0.29,0.32,1.21,0.95,0.14,2,0.81,0.88)
temp <- c(63.89,63.38,65.05,62.31,68.04,59.12,62.80,61.89)
fact <- c("A","B","C","C","B","B","A","B")

dados <- data.frame(failure.time,temp,fact)
summary(dados)
write.csv(dados,file = "dados_ex2.csv")

dados.sum <- dados %>%
  group_by(fact) %>%
  summarise(across(temp, list(sum = sum)))

names(dados.sum$temp_sum) <- c("a","b","c")
barplot(dados.sum$temp_sum,main = "Tempo de Falha", ylab = "Tempo")

pareto <- pareto.chart(dados.sum$temp_sum,main = "Tempo de Falha", ylab = "Tempo",  cumperc = c(0,20,40,60,80,100))

x <- dados$failure.time
y <- dados$temp

plot(x, y, pch = 19)
abline(lm(y ~ x), col = "red", lwd = 3)

correlation <- cor(dados$failure.time,dados$temp)

plot(as.factor(dados$fact), dados$failure.time, main = "tempo de falha")
plot(as.factor(dados$fact), dados$temp, main = "temperatura")

hist(dados$temp, freq = FALSE)
hist(dados$failure.time, freq = FALSE)

hist(dados.split$B$temp, freq = FALSE)
lines(density(dados.split$B$temp), lty = 2, lwd = 2)

dados.fact <- split(dados, f=factor(dados$fact))
