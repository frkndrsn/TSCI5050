library(tidyverse)
library(rio)
library(synthpop)
dat0 <- import('~/OneDrive - UT Health San Antonio/Copy of Prostate2017_top100.xlsx', skip=1)
# dat0$`date of metastasis` <- as.Date(as.numeric(dat0$`date of metastasis`),origin='1899-12-30')
# dat0$`dateofdeath` <- as.Date(as.numeric(dat0$`dateofdeath`),origin='1899-12-30')
# dat0$`dateofprogression` <- as.Date(as.numeric(dat0$`dateofprogression`),origin='1899-12-30')
# dat0$race <- NULL

#what type of object is 'dat0'?
class(dat0)
#what folder am I in? 
getwd()
#very useful command 
summary(dat0)
#in R studio there is also 'View()' it lets you interactively view your data
View(dat0)
#adding codebook
dat0cb <- codebook.syn(dat0)
# number of rows:
nrow(dat0)
# number of columns:
ncol(dat0)
keephead <- subset(dat0cb$tab, perctmiss<14 & ndistinct>1)[,1]
keephead <- setdiff(keephead,'PUF_CASE_ID')
#to simulate the databae
sim0 <- syn(dat0[,keephead])
export(sim0$syn,'NCDB.csv')
export(dat0,'~/OneDrive - UT Health San Antonio/Copy of Prostate2017_top100.csv')
# how to get rid of a column in a data.frame:
#  dat0$race <- NULL

# to remote any dublicated values
# sim1 <- sdc(sim0,dat0,label='SIM',rm.replicated.uniques = T)

