library(Sleuth2)
attach(ex1123)
plot(SO2, Mort)

coplot(Mort ~ SO2 | Educ)
