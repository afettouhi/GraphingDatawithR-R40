emissions <- data.frame(Year=numeric(7),N_Amer = numeric(7),
CS_Amer=numeric(7), Europe=numeric(7),Eurasia=numeric(7),
Mid_East=numeric(7),Africa=numeric(7), Asia_Oceania=numeric(7))

emissions <- edit(emissions)

save (emissions,file="/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/emiss.rda")

load("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/emiss.rda")

