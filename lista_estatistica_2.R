#2
z = (34.5 - 35) / (2.3 / sqrt(40))
print(z)
# two-tailed 5% -> 1.96
# two-tailed 1% -> 2.575
# one-tailed 5% -> 1.645
# as médias são iguais

#3
n = 50
x = 420.4
sigma = 55.7
firmas = 380
z = (x - 408) / (sigma / sqrt(n))
print(z)
# one-tailed 5% -> 1.645
# não é superior

#4
y = 13
sigma = 0.1
prob = pnorm(13.2, mean = 13, sd = 0.1) - pnorm(13, mean = 13, sd = 0.1)
# 0.4772499
# curve(dnorm(x, mean=13,sd=0.1), 12.5, 13.5, add=T, col="blue")
x=seq(12.5,13.5,length=200)
y=dnorm(x,mean=13,sd=0.1)
plot(x,y,type="l")
x=seq(13,13.2,length=100)
y=dnorm(x,mean=13,sd=0.1)
polygon(c(13,x,13.2),c(0,y,0),col="red")

prob2 = pnorm(13.1, mean = 13, sd = 0.1) - pnorm(12.8, mean = 13, sd = 0.1)
x=seq(12.5,13.5,length=200)
y=dnorm(x,mean=13,sd=0.1)
plot(x,y,type="l")
x=seq(12.8,13.1,length=100)
y=dnorm(x,mean=13,sd=0.1)
polygon(c(12.8,x,13.1),c(0,y,0),col="red")

prob3 = pnorm(13.2, mean = 13, sd = 0.1) - pnorm(13.1, mean = 13, sd = 0.1)
x=seq(12.5,13.5,length=200)
y=dnorm(x,mean=13,sd=0.1)
plot(x,y,type="l")
x=seq(13.1,13.2,length=100)
y=dnorm(x,mean=13,sd=0.1)
polygon(c(13.1,x,13.2),c(0,y,0),col="red")

#5
y = 130
sigma = 45
pnorm(90, mean = 130, sd = 45)
pnorm(180, mean = 130, sd = 45) - pnorm(60, mean = 120, sd = 45)

#6
n = 10
x = 85
sd = 15
z.value = 1.645 
média.global.inf = x - 1.645 * 15 / sqrt(n)
média.global.sup = x + 1.645 * 15 / sqrt(n)
média = c(média.global.inf,média.global.sup)
print(média)
# 90% - z = 1.645

#7
y = 300
sigma = 24

z = (310 - 300)/(24 / sqrt(sigma))
# z-valor pra 1% - 2.33
# Como z < 2.33, a média não é maior pra esse nível de significância

#8
y = 45.1
sigma = 0.04
n = 4
forca.inf1 = y - 1.96 * sigma / sqrt(n)
forca.sup1 = y + 1.96 * sigma / sqrt(n)
forca1 = c(forca.inf1,forca.sup1)
print(forca1)
forca.inf2 = y - 2.58 * sigma / sqrt(n)
forca.sup2 = y + 2.58 * sigma / sqrt(n)
forca2 = c(forca.inf2,forca.sup2)
print(forca2)
# 90% - z = 1.645
# 95% - z = 1.96
# 99% - z = 2.58
forca.total1 = 4 *forca1
forca.total2 = 4 *forca2
print(forca.total1)
print(forca.total2)

#9
#duvida

#10
y = 0.05
n = 10
x = 0.053
sd = 0.003
z = (x - y)/(sd/sqrt(n))
# 5%, z = 1.96
# 1%, z = 2.58
# não está adequado

#11 igual a 5

#12
n = 10
x = 75
sd = 15
tempo.inf = x - 1.645 * sd / sqrt(n)
tempo.sup = x + 1.645 * sd / sqrt(n)
tempos = c(tempo.inf,tempo.sup)
print(tempos)
tempo.total = 100 * tempos
# 90% - z = 1.645
# 95% - z = 1.96
# 99% - z = 2.58

#13
rm(list = ls())
vida = c(152.7,
         172.0,
         172.5,
         173.3,
         193.0,
         204.7,
         216.5,
         234.9,
         262.6,
         422.6)
shapiro.test(vida)
# p-valor abaixo de 0.05
mean = mean(vida)
sd = sd(vida)
histogram(vida)
x=seq(0,450,length=200)
y=dnorm(x,mean=mean,sd=sd)
plot(x,y,type="l")
