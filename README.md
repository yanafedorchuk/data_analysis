# data_analysis
### Project: Analizing the relationship between English church appointments and population of settlements in 1550-1800.
### The H0 hypothesis: The English church appintments effected on population of English settlements in 1550-1800.
The time frame is 1550-1800 and has a step of 25 years.
#### Data Source: The Cleargy DataBase: https://theclergydatabase.org.uk/. The data base stores Enlish church appointments for each unique location that is indicated as CCED_id and year of the appintment. Appointments are differentiated by the Type. For example: Induction Mandate, Death, Marriage, Nomination, etc.
#### Data: The final dataset included observations for 970 cities that totaled 45777 appoinments (with multiple people present). Average count of appointments for the cities from final data set per year is 10.2.
#### Appointments: I decided to count in only appointments where multiple people were present (at least two)
As having an appointment with only one person, would not affect the population, because besides the attendee and priest (or any other person that serves in church) there are no other people for the attendee to meet. I don't count as a meeting -- meeting the person who serves in church, as these attendee meets the church service people multiple times, and they are not unique with every appointment in the church.
#### Population: The initial dataset with population has issing values for some cities for some periods. I filled the missing values (as much as possible) for each city that had a missing papulation observation with an average value of population between the preceding period and later period -- for which data was available.
#### How: by collecting population data and church appintments data I constructed the dataset that includes (for each city, for each year) population and number of appintments that took place. Using the dataset I calculated the point estimates for two model specifications:
#### 1. Population ~ appointments + City_Fixed_Effects
#### 2. ln(Population) ~ ln(appointments) + City_Fixed_Effects
for each specification I run two models: with city fixed effects clustering and without.
#### To see the results of the estimation, please read the paper in this repository.
#### With the next step I tested four regression methods from scikit-learn library: Linear Regressor, Random Forest Regressor, Lasso regressor, and  LassoLars regressor. 
I compared the outputs of these four regression models to each other using Mean Absolute Error (MAE), Mean Squared Error(MSE), and Root Mean Squared Error (RSME) -- that are normally used for scoring regression models.
#### To see the results of comparison between 4 scikit-learn regression models, please read the paper in this repository.
