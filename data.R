source("config_public.R")
library("rio")
library("dplyr")
library("survival")
library("ggplot2")
library('forcats')
dat0 <- import(datafile0)
lookup0 <- import(lookup)
dat1 <- mutate(lookup0, Code=gsub('NAACCR:630:','',Code) %>% as.integer()) %>% left_join(dat0, ., by=c("INSURANCE_STATUS"='Code'))
#create a new column
c_event <- 'PUF_VITAL_STATUS'
c_time <- 'DX_LASTCONTACT_DEATH_MONTHS'
dat1$c_event <- dat1$PUF_VITAL_STATUS == 1
dat1$c_time <- dat1$DX_LASTCONTACT_DEATH_MONTHS
dat1$c_T <- dat1$TNM_CLIN_T %>% gsub('[ABC]','',.) %>% gsub('0','1',.) %>% gsub('^$','cX',.)
#to see a histogram of the data
hist(dat1$c_time)
ggplot(dat1,aes(x=c_time,fill=c_event)) + geom_histogram()
fit0 <- survfit(Surv(c_time, c_event) ~ c_T, data = dat1)
plot(fit0,col = c('blue','green','red','grey'))
legend('topright',legend=names(fit0$strata), col = c('blue','green','red','grey'), lty = 1)
fit1 <- survfit(Surv(c_time, c_event) ~ Status, data = dat1)
plot(fit1,col = c('blue','green','red','grey','orange','purple'))
legend('bottomleft',legend=names(fit1$strata), col = c('blue','green','red','grey','orange','purple'), lty = 1)

