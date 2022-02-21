# Deliverable 1: Linear Regression to Predict MPG
# Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read_csv("MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

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