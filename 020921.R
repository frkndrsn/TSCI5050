library(tidyverse)
summary(dat0)
head(dat0)
subset(dat0)
#arrange dataset, column name
arrange(dat0, dateofdeath)


table()
names()
select()
ls()
#browser()
summary(dateofdeath)
with(dat0, summary(dateofdeath))
with(dat0, browser())
#View (subset(dat0, furman>3 & thrombuslevel>2 & ethnicity!='Unknown'))