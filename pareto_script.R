# pareto
library(dplyr)
failure.time <- c(0.29,0.32,1.21,0.95,0.14,2,0.81,0.88)
temp <- c(63.89,63.38,65.05,62.31,68.04,59.12,62.80,61.89)
fact <- c("A","B","C","C","B","B","A","B")

dados <- data.frame(failure.time,temp,fact)

dados.sum <- dados %>%
  group_by(fact) %>%
  summarise(across(temp, list(sum = sum)))

names(dados.sum$temp_sum) <- c("a","b","c")

factors <- sort(dados.sum$temp_sum, decreasing = TRUE)

my_bar <- barplot(factors , border=F , 
                  las=1 , ylim=c(0,600),
                  col=c(rgb(0.3,0.1,0.4,0.6) , rgb(0.3,0.5,0.4,0.6) , rgb(0.3,0.9,0.4,0.6) ,  rgb(0.3,0.9,0.4,0.6)) , 
                  main="" )

text(my_bar, factors+10, factors)

total <- sum(factors)

porcentagem <- factors / total
porcentagem = round(porcentagem, digits = 4)

n <- length(factors)


acumulado = c(1:n)
acumulado[1] = factors[1]

for(i in 2:n) {
  acumulado[i] <- acumulado[i-1] + factors[i]
}

a <- c(1:n)
a[1] <- porcentagem[1]

for(i in 2:n) {
  a[i] <- a[i-1] + porcentagem[i]
}

line = lines(acumulado,type = "b")
text(my_bar, acumulado+50, a)

max = max(acumulado)
eixo2 = c(0,max/5,max*2/5,max*3/5,max*4/5,max)
label = c(0,0.2,0.4,0.6,0.8,1)

axis(4,at = eixo2, labels = label)


grid(nx = NA,
     ny = NULL,
     lty = 2, col = "gray", lwd = 1)
