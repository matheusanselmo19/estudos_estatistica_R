curve(0.002 * (x - 10)^2, 9, 11,
      lty = 1, lwd = 2, ylab = "Cost of Poor Quality", 
      xlab = "Observed value of the characteristic", 
      main = expression(L(Y) == 0.002 ~ (Y - 10)^2))
abline(v = 9.5, lty = 2)
abline(v = 10.5, lty = 2)
abline(v = 10, lty = 2)
abline(h = 0)
text(10, 0.002, "T", adj = 2)
text(9.5, 0.002, "LSL", adj = 1)
text(10.5, 0.002, "USL", adj = -0.1)

bolts <- c(10.4042, 10.0578, 9.7491, 10.0475, 10.1301, 10.2584, 10.1098, 10.0436, 9.9468, 9.6706, 9.9478,
10.1013, 10.2102, 10.1539, 9.7827,
10.2678, 9.8838, 9.6940, 10.1691, 9.8784, 10.1144,
9.8491, 10.2111, 10.0913, 9.9463,
9.9830, 10.1462, 10.0127, 10.0299, 10.0379, 10.3977,
9.9481, 10.3018, 9.6780, 10.1120,
10.2947, 10.1443, 10.0357, 10.0244, 10.1306, 10.2469,
9.8660, 9.9973, 9.7712, 9.7274, 10.0433, 9.8711, 9.9762, 9.8510, 10.1934)

hist(bolts)

k <- 0.001/(0.5^2)

L <- k * sum((bolts - 10)^2)/length(bolts)
print(L) # Perda média por item

#Para 100000 itens

total.loss <- 100000 * L

################### sixsigma package
library(SixSigma)
bolts.frame <- data.frame(diameter = bolts)
ss.lfa(bolts.frame,"diameter",0.5,10,0.001,length(bolts),"both","graph")

ss.lfa(ss.data.bolts, "diameter", 0.5, 10, 0.001, lfa.size = 100000, lfa.output = "both")


############# Practice

k2 <- 350 / (2 ^ 2)

curve(k2 * (x - 15)^2, 10, 20,
      lty = 1, lwd = 2, ylab = "Cost of Poor Quality", 
      xlab = "Observed value of the characteristic", 
      main = expression(L(Y) == 87.5 ~ (Y - 15)^2))

abline(v = 13, lty = 2)
abline(v = 17, lty = 2)
abline(v = 15, lty = 2)
abline(h = 0)
text(15, 2000, "T", adj = 2)
text(13, 2000, "LSL", adj = 1)
text(17, 2000, "USL", adj = -0.1)

############

delta <- 10
cost <- 1.25

k3 <- cost / (delta ^ 2)
curve(k3 * (x - 750)^2, 730, 770,
      lty = 1, lwd = 2, ylab = "Cost of Poor Quality", 
      xlab = "Observed value of the characteristic", 
      main = expression(L(Y) == 0.0125 ~ (Y - 750)^2))
   
abline(v = 740, lty = 2)
abline(v = 750, lty = 2)
abline(v = 760, lty = 2)
abline(h = 0)
text(750, 4.6, "T", adj = 2)
text(740, 4.6, "LSL", adj = 1)
text(760, 4.6, "USL", adj = -0.1)

###########
library("SixSigma")

ss.lfa(ss.data.ca, "Volume", 10, 750, 1.25, lfa.size = 12500, lfa.output = "both") #DANDO VALOR DE K ERRADO

