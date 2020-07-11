install.packages("Quandl")
library(Quandl)

penn.crime = Quandl("FBI_UCR/USCRIME_STATE_PENNSYLVANIA")

nsf2011 = read.csv(
  "http://www.nsf.gov/statistics/ffrdc/data/exp2011.csv",
    header=TRUE)

install.packages("foreign", dependencies=TRUE)
library(foreign)

stone=read.spss("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/The Gravestone Index.SAV",to.data.frame=TRUE)
fix(stone)  # look at the data in the editor

library(help=foreign)

gs = read.fwf("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/The Gravestone Index.DAT",widths = c(1,4,3,2,2,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,1))

gs = read.fwf("/home/af/Dokumenter/Programs/GraphingDatawithR-R40/data/The Gravestone Index.DAT",
    widths = c(1,4,3,2,2,rep(1,42)))

names(gs) = vars

install.packages("XML",dependencies=TRUE)
library(XML)
cand = xmlToDataFrame("CandidateSummaryAction.xml")

install.packages("ncdf")
library(ncdf)

ice = open.ncdf("seaice_conc_monthly_nh_f08_198707_v02r00.nc")
# creates an R object named "ice"
str(ice) # shows that ice is a list comprised of other lists
icedata = get.var.ncdf(ice,"seaice_conc_monthly_cdr")
close.ncdf(ice)
