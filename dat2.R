library(readxl)
dat0 <- read_excel("~/OneDrive - UT Health San Antonio/Desktop/Dr. Rodriguez/Tumor Enhancement/Thrombus_enhancement_dataset.xlsx")
dob <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 2]
gender <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 4]
ethnicity <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 5]
race <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 6]
pathologyaccession <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 8]
typesofrcc <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 9]
deathyn <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 19]
dateofdeath <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 20]
dateofprogression <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 26]
lastfollowupdatemmddyyyy <- dat0[c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48), 27]
dat3 <- data.frame(dob, gender,ethnicity, race, pathologyaccession, typesofrcc, deathyn, dateofdeath, dateofprogression, lastfollowupdatemmddyyyy)
print(dat3)
