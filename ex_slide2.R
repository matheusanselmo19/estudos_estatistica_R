defeito <- c("MS","SQ","CMD","LMD","MA","MD","PA","LI","OD","PD")
quantidade <- c(14,1,4,24,1,44,7,79,1,5) 
prejuizo <- c(0.25,0.1,0.15,0.1,0.1,0.75,5.25,0.3,0.1,0.35)
prejuizo.total <- quantidade * prejuizo

names(prejuizo.total) <- defeito
names(quantidade) <- defeito

png("prejuizo_total.png")
pareto.chart(prejuizo.total,main = "Prejuízo Total ", ylab = "Prejuízo (US$)",  cumperc = c(0,20,40,60,80,100))
dev.off()

png("quantidade_defeitos.png")
pareto.chart(quantidade,main = "Quantidade de Defeitos", ylab = "Frequência",  cumperc = c(0,20,40,60,80,100))
dev.off()
