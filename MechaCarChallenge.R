# Deliverable 1: Linear Regression to Predict MPG
# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read_csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length +
     vehicle_weight +
     spoiler_angle +
     ground_clearance + AWD, data=MechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length +
             +        vehicle_weight +
             +        spoiler_angle +
             +        ground_clearance + AWD, data=MechaCar_mpg))



# Deliverable 2: Create Visualizations for the Trip Analysis
# Import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read_csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard 
# deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), 
                                               Median=median(PSI), 
                                               Variance=var(PSI),
                                               SD=sd(PSI), 
                                               .groups = 'keep')

# creates a lot_summary dataframe using the group_by() and the summarize() functions 
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                                                             Median=median(PSI), 
                                                                             Variance=var(PSI),
                                                                             SD=sd(PSI), 
                                                                             .groups = 'keep')

# Deliverable 3: T-Tests on Suspension Coils
# determine if the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI,mu=1500)

# t-test for each manufacturing lot
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)