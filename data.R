source("config_public.R")
library("rio")
library("dplyr")
library("survival")
library("ggplot2")
dat0 <- import(datafile0)
#create a new column
#c_event <- 'PUF_VITAL_STATUS'
#c_time <- 'DX_LASTCONTACT_DEATH_MONTHS'
dat0$c_event <- dat0$PUF_VITAL_STATUS == 1
dat0$c_time <- dat0$DX_LASTCONTACT_DEATH_MONTHS 
#to see a histogram of the data
hist(dat0$c_time)
ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_histogram()
