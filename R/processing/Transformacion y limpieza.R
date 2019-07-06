#Se corrige la variable que está mal leída, ya que la edad debe ser númerica.

addmargins(table(accidentes$Edad, useNA="always"))
accidentes$Edad2<-as.integer(as.character(accidentes$Edad))

addmargins(table(accidentes$Edad2, useNA="always"))
hist(accidentes$Edad2)

save(accidentes,file = "R/preparation/accidentes.RData")
save(accidentes,file = "data/raw/accidentes.RData")
