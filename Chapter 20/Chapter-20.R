install.packages("epiDisplay")
install.packages("vcd")
library(epiDisplay)
library(vcd)

?ANCdata

# Table 20-1
library(epiDisplay)
library(vcd)
data("ANCdata")
xtab1 = table(ANCdata$death,ANCdata$anc)   # make this table an object, "xtab1"
xtab1    # show the values in xtab1

mosaicplot(xtab1) # command operates on table, not original cases
mosaic(~ANCdata$death+ANCdata$anc)

xtab1 = array(c(373, 46, 316, 20), c(2,2),
  list(c("no", "yes"), c("old", "new")))

# enter table of ANC frequencies, rather than read ANCdata
# two-way table - data from Table 20-1
library(vcd)
counts = c(373, 46, 316, 20)  # enter 1st col, 2nd col
death = c("no", "yes")
anc = c("old", "new")
xtab1 = array(counts, c(2,2), list(death, anc))
names(dimnames(xtab1))  = c("death", "anc")
xtab1           # prints Table 20-1
mosaicplot(xtab1)   # produces Figure 20-1

# three-way table - data from Table 20-2
library(vcd)
cnts = c(176, 197, 12, 34, 293, 23, 16, 4)
clinic = c("A", "B")
death = c("no", "yes")
anc = c("old", "new")
xtab2 = array(cnts, c(2,2,2), list(clinic, death, anc))
names(dimnames(xtab2)) = c("clinic", "death", "anc")
xtab2          # Table 20-2
mosaicplot(xtab2)  # Figure 20-2
# use appropriate mosaic() command for any other plot in
# chapter

# Table 20-2
xtab2 = table(ANCdata$clinic,ANCdata$death,ANCdata$anc)
xtab2 # produces the following table

# Figure 20-2
xtab2 = table(ANCdata$clinic,ANCdata$death,ANCdata$anc)
mosaic(xtab2)

# Figure 20-3
# make treatment groups (anc) obvious
mosaic(xtab2, highlighting = "anc")

# Figure 20-4
mosaic(table(ANCdata$clinic,ANCdata$anc,ANCdata$death),
  highlighting = 'death',
  highlighting_fill = c('royal blue', 'gold'))

# Figure 20-5
mosaic(table(ANCdata$death,ANCdata$anc,ANCdata$clinic),
  highlighting = 'clinic',
  highlighting_fill = c('royal blue', 'gold'))

# Figure 20-6
mosaic(xtab2, shade = TRUE, legend=TRUE)
