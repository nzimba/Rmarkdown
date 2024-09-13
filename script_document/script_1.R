library(readxl)
data=read_excel("C:/Users/DELL/Videos/Projet_Austi/Analyse_Mariam/data/data.xlsx")
summary(data)
names(data)

data.ts = ts(data$Recettes, start=c(2005,1), end=c(2022,12), frequency=12)
summary(data.ts)
plot(data.ts, col="red")

logdata.ts = log(data.ts)
plot(logdata.ts, col="blue")