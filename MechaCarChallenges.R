# Deliverable 1 -------

library(dplyr)

df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(df)

car_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=df)

summary(car_lm)



#Deliverable 2-----------

Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)


total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


#Deliverable 3 -----------

t.test(Suspension$PSI,mu = 1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)