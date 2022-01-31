library(dplyr)
# 1
A = c(7.8, 5.1, 8.0, 6.5, 7.4, 8.2, 6.1)
B = c(9.2, 8.4 ,9.5 ,7.3 ,9.5 ,8.9 ,7.1)
quest1 = data.frame(A,B)
t.test(A,B)
# p-valor = 0.0204, logo as médias são diferentes. letra b

# 2
library(BSDA)
C1 = c(510,525,530,535,565,565,560,540,570,545,575,565,555,550,535,520,560,560,545,550)
z.test(
  C1,
  mu = 560,
  sigma.x = 15,
  conf.level = 0.95
)
# letra a


# 3 letra a

# 4
antes = c(85.5,84.7,84.9,86.3,83.8,84.2,82.9,83.5,84.8,85.3)
depois = c(96.7, 90.2, 90.5, 83.3, 77.6, 86.9, 68.5, 66.1, 87.7, 55.6)
t.test(antes,depois)
#letra b

#5
tempo = c(14,13,17,15,12,18,15,13,14,19,17,14,16,17,15)
t.test(tempo, mu = 15)
#

#6
atual = c(199.1,200.6,201.4,200.5,200.2,198.7,199.7,199.1,200.5,198.8)
proposto = c(203.3,205.5,205.3,205.4,203.8,205.8,205.2,205.5,204.4,206.3)
var.test(atual, proposto, alternative = "two.sided")
#letra a

#7
amostra = c(0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0)
length(amostra)
proporção = sum(amostra)/length(amostra)

#8
turno.a = c(113,122,138,124,139,118,139,122,121,131,129,133,144,124,153)
turno.b = c(141,152,147,147,161,147,169,146,147,144,157,145,136,144,154)
t.test(turno.a, turno.b, alternative = "less")
# a média do turno a é menor que a do turno b. dúvida (menor ou igual)

#9
tempo.9 = c(140,144,150,145,142,139,134,152,147,146,153,145,141,141,137,149,143,144)
t.test(tempo.9,mu = 147, alternative = "less")
# o tempo é menor. letra b

#10
antiga = c(52,49,50,49,52)
nova = c(51,48,54,52,53)
# nova = c(1,4,5,5,3)
t.test(nova,antiga, alternative = "less")
# o  tempo é maior ou igual, letra a

#11
empresa1 = c(11,12,10,9,13,9,7,8,8,8,11,7,9,10,9)
empresa2 = c(8,9,8,6,12,7,9,5,8,13,8,7,6,10,9)
empresa3 = c(11,12,10,9,13,9,7,8,8,8,11,7,9,10,9)
empresa4 = c(13,16,11,12,11,10,14,12,13,15,13,12,16,9,17)
# empresa.frame = data.frame(empresa1,empresa2,empresa3,empresa4)

empresa.frame <- read.csv("empresa_prazo_preav.csv", header = TRUE, sep = ",")
anova.res = aov(prazo ~ empresa, data = empresa.frame)
summary(anova.res)
# se o p-valor é menor que 0.05 as médias diferem. Logo, letra b.

#12
empresa.frame2 <- read.csv("empresa_prazo_preav2.csv", header = TRUE, sep = ",")
anova.res2 = aov(prazo ~ empresa, data = empresa.frame2)
summary(anova.res2)
# p-valor > 0.05, logo as médias são iguais, letra a.

#13
# r é o coeficiente de correlação de Pearson. Esse coeficiente varia de -1 a 1. Quanto mais
# próximo de 1 ou -1 mais forte é a correlação entre duas variáveis.
# r^2 é o coeficiente de determinação. quanto mais próximo de 1, maior a relação entre as variáveis (duvida)
# V F F F

#14 
#letra b ou a?

#15
y = c(151.30,172.40,175.60,180.10,189.30,195.90,198.73)
x = c(259.3,267.5,281.6,279.5,293.7,289.9,295.4)
relation <- lm(y~x)
relation
plot(x,y,col = "blue",
     abline(lm(y~x)),cex = 1.3,pch = 16)
summary(relation)
# y = 1.134*x - 138.286
# r^2 = 0.8936
# p-valor = 0.001304
# letra d

# teste 

a1 = c(1, 2 , 1.1, 1.2, 0.9)
a2 = c(10, 12 , 11.1, 11.2, 10.9)
t.test(a1,a2,alternative = "less")
