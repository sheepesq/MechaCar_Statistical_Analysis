library(jsonlite)
library(dplyr)
#     4    #
mpg_data <- read.csv('MechaCar_mpg.csv') #import dataset
#     5   #
head(mpg_data)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mpg_data)

#     6   #

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= mpg_data)) #generate summary statistics

#   Deliverable 2 #

Sus_data <- read.csv('Suspension_Coil.csv') #import dataset
head(Sus_data)

# 3 #
total_summary <- Sus_data %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 

# 4 #

lot_summary <- Sus_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

##  Deliverable 3  ##

t.test(Sus_data$PSI,mu = 1500)

# 2 #
t.test(subset(Sus_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(Sus_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(Sus_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)











