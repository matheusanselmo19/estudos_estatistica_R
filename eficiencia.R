# eficiencia

ef1 = (1915-3) / 1915
ef2 = (1912-5) / 1915
ef3 = (1907-15) / 1915
ef.total = ef1 * ef2 * ef3
print(ef.total)

##############

carros.dia = 1000
ef.prensa = 0.78
ef.carroceira = 0.90
ef.pintura = 0.92
ef.carros = ef.prensa * ef.carroceira * ef.pintura

#####
wine = c(755.81, 750.54, 751.05, 749.52, 749.21, 748.38,  748.11,	753.07, 749.56, 750.08,	747.16, 747.53,  749.22, 746.76,	747.64, 750.46, 749.27, 750.33,  750.26, 751.29)
ss.ca.z(wine,740,760)
media = mean(wine)
sd = sd(wine)

LSE = 760
LIE = 740

nivel.sigma1 = (LSE-media)/sd
nivel.sigma2 = (media-LIE)/sd

ss.ca.cp(wine, 740, 760)
ss.ca.cpk(wine, 740, 760)
ss.ca.cp(wine,740,760,ci=TRUE)
ss.ca.cpk(wine, 740, 760,ci=TRUE)
