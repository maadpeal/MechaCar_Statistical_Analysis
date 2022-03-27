# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - The variable that has the best relation is the length of the vehicle, if we observe 
    the image of the correlation matrix, and the scatter plot.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/A-1.png)
    (image A-1)
![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/A-2.png)
    (image A-2)

    - Both vehicle length and ground clearance have a very low probability of contributing 
    random values (Pr(>|t|)) vehicle_length : 2.60e-12, ground_clearance: 5.21e-08.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/B-1.png)
    (image B-1)

#### Is the slope of the linear model considered to be zero? Why or why not?
    - Depending on the coefficient of the variable that is looked at, we can have values 
    close to 0 and others not as much as you can see the picture.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/C-1.png)
    (image C-1)


#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - According to the p-value and the r squared, they indicate that the model does explain 
    most of the variations.
    - The r squared is 0.7149, closer to 1 than 0 (image B-1).

## Summary Statistics on Suspension Coils

#### The variance of the suspension coils must not exceed 100 pounds per square inch. 
#### Does the current manufacturing data meet this design specification for all manufacturing 
#### lots in total and each lot individually? Why or why not?
    - If we observe the variance in a general way, the condition that it is not greater 
    than 100 is met.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/D-1.png)
    (image D-1)

    - When we see the values grouped by batch we realize that lot 3 does not comply with 
    what is specified while 1 and 2 do meet.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/E-1.png)
    (image E-1)

    - The maximum standard deviation is 10, therefore we are going to look for those that 
    exceed these limits in lot 3, which are 1486 and 1506, we find that there are 11 of 50 
    elements that are outside the standard deviation as we can see in the image.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/F-1.png)
![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/F-2.png)
    (image F-1, F-2)


## T-Tests on Suspension Coils
    - Assuming our significance level was the common 0.05 percent, our p-value general is 
    above our significance level see image.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/G-1.png)
    (image G-1)

    - If we see the data for each batch we realize that 1 and 2 are statistically similar 
    but the third is no longer.

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/H-1.png)
    (image H-1 Lot1)

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/H-2.png)
    (image H-2 Lot2)

![](https://github.com/maadpeal/MechaCar_Statistical_Analysis/blob/main/Resources/H-3.png)
    (image H-3 Lot3)


## Study Design: MechaCar vs Competition
    - We must take into account that the location as the social stratum to which we would 
    be aiming will affect the metrics to be used.
    - In this example it is assumed that the consumer is middle class in a fairly populated 
    urban area.
    - Doing an online search and comparing opinions, consumers are usually based on the 
    following points.

#### Metrics
    - Car security.
    - Fuel savings.
    - Low maintenance cost.
    - Price.
    - Environmentally friendly.
    - Calm / quiet driving.
    - OOpinions of other consumers.

#### Hypothesis

    - Alternative: the metrics described above influence the consumer when making his 
    choice.
    - Null: the selected metrics do not affect the choice of our products or those
    of the competition.

#### test the hypothesis
    - The significance level should be taken as 5% to mitigate type 1 error.
    - Take different samples to have points of comparison.
    - You have to do a test on one sample test of the mean of the samples if they 
    correspond to the population.
    - We should do this procedure with each of the metrics we have chosen.

#### Neccesary data
    - To carry out a study of these characteristics, economists seek the greatest 
    amount of data available to analyze and project trends.
    - If possible, it would be good to have at least 10 to 15 years of information, properly 
    labeled with its lines of time, and if they are from a specific location that is expressed 
    to take it into account.
    - Additionally, it must be taken into account that each year is not the same as another 
    and that sometimes events occur that affect the demand for automobiles such as wars, 
    increases in gasoline prices, recessions, etc...
