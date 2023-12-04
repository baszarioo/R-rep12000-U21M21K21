#To load the data from the file Survey.csv into R, you can use the following command:
data <- read.csv("Survey.csv");

#To draw a box plot for age, broken down by gender, you can use the following command:
boxplot(data$age ~ data$gender, main="Age by Gender", xlab="Gender", ylab="Age");

#To draw a histogram for systolic blood pressure, you can use the following command:
hist(data$systolic_blood_pressure, main="Systolic Blood Pressure", xlab="Systolic Blood Pressure", ylab="Frequency")

#To modify the histogram so that empirical probabilities are marked on the vertical axis, you can use the following command:
hist(data$systolic_blood_pressure, main="Systolic Blood Pressure", xlab="Systolic Blood Pressure", ylab="Empirical Probability", freq=FALSE)

#To answer the question of whether there were more women or men in the surveyed group, you can draw a bar chart using the following command:
barplot(table(data$gender), main="Gender Distribution", xlab="Gender", ylab="Count")

#To calculate the average systolic blood pressure for groups defined by gender, you can use the following command:
aggregate(data$systolic_blood_pressure, by=list(data$gender), FUN=mean)

#To visualize the obtained results on a bar chart, you can use the following command:
barplot(aggregate(data$systolic_blood_pressure, by=list(data$gender), FUN=mean)$x, names.arg=aggregate(data$systolic_blood_pressure, by=list(data$gender), FUN=mean)$Group.1, main="Average Systolic Blood Pressure by Gender", xlab="Gender", ylab="Average Systolic Blood Pressure")
