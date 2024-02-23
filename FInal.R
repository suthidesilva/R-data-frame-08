esports <- read.csv("", header = TRUE, sep = ',' ) # add the path

#Summarzing the esport data to find summary of diiferent fields to find odd and unwanted data
summary(esports)

#Removing duplicated data if their is any
esports <- esports[!duplicated(esports), ]

#Since we are looking for total earning for different game we will remove all the data that has total earning of 0
#since it doesnt match up with out objectives
#Removing the data that has total money earned 0 
esports <- esports[esports$TotalMoney != 0, ]

#addition we can find there are mutiple data with top country with none value as it is not useful for our data
esports <- esports[esports$Top_Country != "None", ]

#The variable PlayerNo and Top_Country_Earning also has data with 0 so we removing those as well
esports <- esports[esports$Top_Country_Earnings != 0, ]

#Releaseyear we can find that one of the data has 11 which doesnt make any sense
#since it is a outlier and the data is of time period of 1989 to 2020 we can presume the data to be 2011
esports$Releaseyear[esports$Releaseyear == 11] <- 2011

