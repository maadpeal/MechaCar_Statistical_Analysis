library(dplyr)
library(tidyverse)
## Deliverable 1
dt <- read_csv('MechaCar_mpg.csv')
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, dt)
summary(model)

head(dt)

plt <- ggplot(dt,aes(x=mpg,y=vehicle_length))
plt + geom_point()

used_matrix <- as.matrix(dt[,c("vehicle_length","vehicle_weight","spoiler_angle","ground_clearance", "AWD", "mpg")]) 
cor(used_matrix)

## Deliverable 2
dt_coil <- read_csv('Suspension_Coil.csv')
str(dt_coil)
total_summary <- summarize(dt_coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- dt_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# the mean is 1496.14, the maximum variance is 100, so 10 is the maximum standard deviation from the mean
lot3 <- dt_coil[(dt_coil$Manufacturing_Lot == "Lot3") ,]
lot3_greater <- lot3[(lot3$PSI < 1486),]
lot3_lower <- lot3[(lot3$PSI > 1506),]

count(lot3)
# total lot outside of variance
count(lot3_greater) + count(lot3_lower)

## Deliverable 3
## range ajust
t.test(log10(dt_coil$PSI),mu=log10(1500))
lot1_test <- subset(dt_coil, Manufacturing_Lot=="Lot1")
lot2_test <- subset(dt_coil, Manufacturing_Lot=="Lot2")
lot3_test <- subset(dt_coil, Manufacturing_Lot=="Lot3")

t.test(log10(lot1_test$PSI),mu=log10(1500))
t.test(log10(lot2_test$PSI),mu=log10(1500))
t.test(log10(lot3_test$PSI),mu=log10(1500))


