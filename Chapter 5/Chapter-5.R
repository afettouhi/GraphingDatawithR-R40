install.packages("nlme")
library(nlme)

# Figure 5-1
library(nlme)
par(mfrow=c(2,1)) # set up one graph above another: 2 rows/1 col

stripchart(MathAchieve$MathAch, method = "jitter",
  main = "a. Math Ach Scores,
  pch = '19'", xlab = "Scores", pch = "19")

stripchart(MathAchieve$MathAch, method = "jitter",
  main = "b. Math Ach Scores,
  pch = '.'", xlab = "Scores", pch = "..")

# Figure 5-2
library(nlme)
par(mfrow = c(1,2)) # two graphs side-by-side: 1 row, 2 cols

boxplot(MathAchieve$MathAch,
  main = "Math Achievement Scores", ylab = "Scores")

boxplot(MathAchieve$SES,
  main = "Socioeconomic Status", ylab = "SES score")

# Figure 5-3, i.e. 4 graphs
par(mfrow=c(2,2))   #set up page for 2 rows of 2 graphs each
attach(MathAchieve)

boxplot(MathAch ~ Minority, xlab = "boxplot(MathAch~Minority)",
  main = "a. Math by Minority", cex = .4)

boxplot(MathAch~Minority*Sex,
  xlab = "boxplot(MathAch ~ Minority*Sex)",
  main = "b. Math by Min & Sex", cex = .4)

boxplot(MathAch ~ Minority * Sex,
  xlab = "boxplot(MathAch ~ Minority * Sex)",
  sub = 'varwidth=TRUE))', varwidth = TRUE,
  main = "c. By Min & Sex, width~size", cex = .4)

boxplot(MathAch ~ Minority*Sex,
  xlab = 'boxplot(MathAch ~ Minority * Sex',
  varwidth = TRUE, col = c("red","blue"),
  main = "d. Same as c. plus color",
  cex = .4, sub = 'varwidth = TRUE,
  col = c("red","blue"))')

# Figure 5-4a, first must have loaded Nimrod
load("/data/Nimrod.rda")  # /  see Chapter 1
attach(Nimrod)
par(mfrow=c(2,1)) #graphs laid out in 1 display w/ 2 rows, 1 col
boxplot(Time ~ Level * Medium,
  main = "a. Performance time by level and medium")

# Figure 5-4b
boxplot(Time ~ Level * Medium,
  main = "b. Performance time by level and medium with reference
  line", col = c("white", "light blue"))
abline(h = 186, lty = "dotted")
detach(Nimrod)

# Script for Figure 5-5
attach(Nimrod)

# par() sets bkgrnd color, foreground color, axis color,
# text size (cex), horiz.
# text on y-axis (las=1), margins (mar). Graph too big for
# default margins. ?par for more info on above arguments.

par(bg = "white", fg = "white",
  col.axis = "gray47", mar = c(7,8,5,4),
  cex = .65, las = 1)

# boxplot() determines formula (time ~ level * medium),
# makes plot horizontal,
# sets color for box border and box colors (col),
# creates titles (main, xlab), creates names
# for the combinations of level*medium (names), names size
# (cex.names). One of the names is "" because there is no
# category "amateur organ."

boxplot(Time ~ Level * Medium, horizontal = TRUE,
  border = "cadetblue",
  main="Performance Times of Elgar's Nimrod",
  col = c("deepskyblue","peachpuff4"),
  xlab = "Time in seconds",
  names = c("brass band","brass band","concert
  band", "concert band","", "organ ", "orchestra","orchestra"),
  cex.names = .4)

# abline() puts vert. line at time = 186 sec. to show the
# performance conducted by Elgar. Line type (lty) dotted & color
# (col) black.

abline(v = 186, lty = "dotted", col = "black")

# legend() chooses legend text & color & location on the graph.
# Legend shows that pros are peachpuff4 & amateurs are
# deepskyblue.

legend("right", title = "Level", title.col = "black",
  c("Professional","Amateur"),
  text.col = c("peachpuff4","deepskyblue"),
  text.font = 2, cex = 1.2)

# mtext() puts text at a place specified by the user
mtext("  Elgar himself - - >", side = 3,
  line = -2, adj = 0,
  cex = .7, col = "black")

# axis() modifies x-axis (1)  & sets the color & length and
# tickmarks
axis(1, col = "cadetblue", at = c(160,200,250,300))

detach(Nimrod)
