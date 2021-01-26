library(readxl)
dat0 <- read_excel("~/OneDrive - UT Health San Antonio/Desktop/Dr. Rodriguez/Tumor Enhancement/Thrombus_enhancement_dataset.xlsx")
ageattot <- dat0[c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47), 3]
furman <- dat0[c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47), 10]
totalnodesdissection <- dat0[c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47), 16]
bmi <- dat0[c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47), 17]
RDW <- dat0[c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47), 18]
dat2 <- data.frame(ageattot, furman, totalnodesdissection, bmi, RDW)
