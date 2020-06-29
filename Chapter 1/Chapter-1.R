
12/4

(4/2)+1

4/(2+1)

sqrt(57)

help(sum)

?sum

? sum

sum(3,2,1,4)

x1 <- c(1,2,3,4)

x1

mean(x1)

pi <- 3.14

ls()

newvar <- pi*x1

install.packages("Rcmdr", dependencies=TRUE)

library(Rcmdr)

available.packages()

library(help=Rcmdr)

x <- c(14,6.7,5.1,-8)                     #numeric
name <- c("Lou","Mary","Rhoda","Ted") #character/quotes
                                        #needed
test <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical/caps needed

str(x)

str(name)

str(test)

data()

?airquality

head(airquality)

head(airquality,25)

tail(airquality,4)

attach(airquality)
table (Temp)            # get counts of Temp values
mean (Temp)             # find the average Temp
plot(Wind,Temp)         # make a scatter plot of Wind and Temp
detach(airquality)

attach(airquality)
plot(Wind,Temp)
detach(airquality)

plot(airquality$Wind,airquality$Temp)

getwd()

