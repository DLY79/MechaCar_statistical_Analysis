# MechaCar Analysis Autos R Us
## Summary  
Autos R Us' new vehicle, the MechaCar, is facing production issues that is impeding the progress of the manufacturing team. To assist and provide better insight, we will:
- Perform multiple linear regression analyses to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.   

## Linear Regression to Predict MPG  
![Screen Shot 2022-08-15 at 5 39 05 PM](https://user-images.githubusercontent.com/103051630/184719539-eeb238b8-5262-4ee4-94c5-c43703ad81e5.png)  
From the above output we can see that:

The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.

This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

If we remove the less impactful independent variables (vehicle weight, spoiler angle, and All Wheel Drive), the predictability does decrease, but not drastically: the r-squared value falls from 0.7149 to 0.674.

Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


## Summary Statistics on Suspension Coils  
![Screen Shot 2022-09-21 at 5 15 06 PM](https://user-images.githubusercontent.com/103051630/191601721-73d13c09-fb9c-4d00-82b1-566cb756a891.png)  
The Suspension Coil dataset provided for the MechaCar contains the results of testing the weight capacities of multiple suspension coils from multiple production lots to determine consistency.
Lot 1 and Lot 2 are well within the 100 PSI variance requirement but Lot 3 that is showing a larger variance in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.


## T-Tests on Suspension Coils  
![Screen Shot 2022-09-21 at 5 17 51 PM](https://user-images.githubusercontent.com/103051630/191602183-bb0927c3-bd05-40f3-ad27-64afc2591364.png)
From here we can see the true mean of the sample is 1498.78, which we also saw in the summary statistics above. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

## Study Design: MechaCar vs Competition  
### Metrics
Collecting data for comparable models across all major manufacturers for past 3 years for the following metrics:

Safety Feature Rating: Independent Variable
Current Price (Selling): Dependent Variable
Drive Package : Independent Variable
Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
Resale Value: Independent Variable
Average Annual Cost of ownership (Maintenance): Independent Variable
MPG (Gasoline Efficiency): Independent Variable
Hypothesis: Null and Alternative
After determining which factors are key for the MechaCar's genre:

Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.
Statistical Tests
A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price (it may be all of them!)
