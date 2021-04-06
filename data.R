source("config_public.R")
library("rio")
library("dplyr")
library("survival")
library("ggplot2")
library('forcats')
dat0 <- import(datafile0)
#create a new column
#c_event <- 'PUF_VITAL_STATUS'
#c_time <- 'DX_LASTCONTACT_DEATH_MONTHS'
dat0$c_event <- dat0$PUF_VITAL_STATUS == 1
dat0$c_time <- dat0$DX_LASTCONTACT_DEATH_MONTHS 
dat0$c_T <- dat0$TNM_CLIN_T %>% gsub('[ABC]','',.) %>% gsub('0','1',.) %>% gsub('^$','cX',.)
#to see a histogram of the data
hist(dat0$c_time)
ggplot(dat0,aes(x=c_time,fill=c_event)) + geom_histogram()
fit0 <- survfit(Surv(c_time, c_event) ~ c_T, data = dat0) 
plot(fit0,col = c('blue','green','red','grey'))
legend('topright',legend=names(fit$strata), col = c('blue','green','red','grey'), lty = 1)
fit0

