voltmeter = factor(rep(1:2, each = 9))
battery = factor(rep(rep(1:3, each = 3),2))
run = factor(rep(1:3,6))
voltage = c(1.4727, 1.4206, 1.4754, 1.5083, 1.5739, 
            1.4341,	1.5517, 1.5483, 1.4614, 1.3337, 
            1.6078, 1.4767,	1.4066, 1.5951, 1.8419,
            1.7087, 1.8259, 1.5444)
dados = data.frame(voltmeter = voltmeter, battery = battery, run = run, voltage = voltage)

shapiro.test(voltage)
sd(voltage)
mean(voltage)

dados.split.voltmeter = split(dados, f = voltmeter)
dados.split.battery = split(dados, f = battery)

summary(dados.split.voltmeter$`1`)
summary(dados.split.voltmeter$`2`)

summary(dados.split.battery$`1`)
summary(dados.split.battery$`2`)
summary(dados.split.battery$`3`)

sd.voltmeter = c(sd(dados.split.voltmeter$`1`$voltage),sd(dados.split.voltmeter$`2`$voltage))
sd.battery = c(sd(dados.split.battery$`1`$voltage),sd(dados.split.battery$`2`$voltage),sd(dados.split.battery$`3`$voltage))
sd.voltmeter
sd.battery

boxplot(dados$voltage ~ dados$voltmeter)
boxplot(dados$voltage ~ dados$battery)

anova(lm(voltage ~ battery + voltmeter + battery * voltmeter,
         data = dados))

my.rr <- ss.rr(var = voltage, part = battery, appr = voltmeter, data = dados, main = "Six Sigma Gage R&R Measure", sub = "Batteries Project MSA")

#######################

dados2 = ss.data.pastries

my.rr2 <- ss.rr(var = comp, part = batch, appr = lab, data = dados2, main = "Six Sigma Gage R&R Measure", sub = "bakery")
dados2.split = split(dados2, f = dados2$batch)
