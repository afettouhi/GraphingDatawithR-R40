ranknum = c(67,64,266)

barplot(ranknum)

# preliminary to Fig. 9-1
install.packages("car")   # if you have not yet installed car
library(car)
attach(Salaries)
rankcount = table(rank) #get counts & save in vector rankcount
rankcount           # print results

# Fig. 9-1a
barplot(rankcount, ylab = "Count", col = "skyblue",
  main = "Faculty by Rank", sub = "a. Number in each rank")

aver = aggregate(salary ~ rank, FUN = mean) # aver is new vector
aver   # see what is in aver

# Fig. 9-1b- bar height shows mean salary, names are ranks
barplot(aver$salary, ylab = "Average Salary",
  names.arg = aver$rank, col = "skyblue",
  main = "Faculty Salaries", sub = "b. Average salary by rank")

rank2 = table(rank,sex)
rank2

# Fig. 9-1c
barplot(rank2, ylab = "Count", names.arg = c("Female","Male"),
  main = "Faculty by Rank and Sex",
  col = c("skyblue","skyblue4","burlywood"),
  sub = "c. Stacked plot")
legend("topleft", c("Prof","Assoc","Asst"),
  text.col = c("burlywood","skyblue4","skyblue"))

# Fig. 9-1d
barplot(rank2, ylab = "Count", names.arg = c("Female","Male"),
  main = "Faculty by Rank and Sex",
  col = c("skyblue","skyblue4","burlywood"),
  sub = "d. Grouped plot", beside = T)
legend("topleft", c("Prof","Assoc","Asst"),
  text.col = c("burlywood","skyblue4","skyblue"))

# script for Figure 9-2
rank3 = table(sex, rank)
rank3

spineplot(rank3, col = c("skyblue","skyblue4","burlywood"),
  main = "Faculty by Sex and Rank")

# Script for Fig. 9-3
library(car)  # Fig. 9-3
attach(Salaries)
par(mfrow = c(2, 2))
grp.sal = aggregate(
  salary ~ sex * rank, FUN = mean) # mean of each group

# labels reused several times, can type vector name in commands
rankname = c(" Asst", " ", "  Assoc", " ", " Prof", "")
sexcol = c("blue", "maroon")
sexlab = c("Female", "Male")

# Fig. 9-3a
barplot(grp.sal$salary, ylab = "average salary",
  names.arg = rankname, col = sexcol,
  main = "Faculty Salaries",
  sub = "a. Default spacing between bars")
legend("topleft", sexlab, text.col = sexcol,
  text.font = 2, title = "Sex",
  title.col = "black", cex = 0.8)

# Fig. 9-3b
barplot(grp.sal$salary, ylab = "average salary",
  names.arg = rankname,  col = sexcol,
  main = "Faculty Salaries", space = 1.5,
  sub = "b. Wide space between, space = 1.5")
legend("topleft", sexlab, text.col = sexcol, text.font = 2,
  bty = "n")

# Fig. 9-3c
barplot(grp.sal$salary, ylab = "average salary",
  names.arg = rankname, col = sexcol,
  main = "Faculty Salaries", space = c(1, 0, 1, 0, 1, 0),
  sub = "c. Same rank together, space = c(1,0,1,0,1,0)")
legend("topleft", sexlab, text.col = sexcol,
  text.font = 2, bty = "n")

# Fig. 9-3d
barplot(grp.sal$salary, ylab = "average salary", col = sexcol,
  main = "Faculty Salaries", space = c(1, 0, 1, 0, 1, 0),
  horiz = T, sub = "d. Horizontal version of c. horiz=T",
  names.arg = rankname,
  cex.names = 0.8, las = 1)
legend("bottomright", sexlab, text.col = sexcol,
  text.font = 2, bty = "n")

detach(Salaries)
