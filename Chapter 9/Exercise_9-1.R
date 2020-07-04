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
sexlab2 = c("Male", "Female")

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
legend("bottomright", sexlab2, text.col = sexcol,
  text.font = 2, bty = "n")

detach(Salaries)

