#Deliverable 1
#activate dplyr library
library(dplyr)
#read file and assign in a name
MCMPG <- read.csv(file='MechaCar_mpg.csv')

head(MCMPG)
#check mpg vs other factors
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MCMPG)
#get summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MCMPG))

#Deliverable 2
#read suspension file, assign it a name
suspension_coil <- read.csv(file="Suspension_Coil.csv")
#get mean, median, var, std dev of PSI of coils
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
View(total_summary)

lot_summary <- suspension_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')
View(lot_summary)

#Deliverable 3

t.test(suspension_coil$PSI,mu=1500)
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)


