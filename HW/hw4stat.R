#To load the data from the file UOF_gs.txt into R, you can use the following command:
data <- read.table("UOF_gs.txt", header=TRUE);

#To assign the following levels to variables, you can use the following commands:

data$gender <- factor(data$gender, levels=c(0, 1), labels=c("female", "male"))
data$college <- factor(data$college, levels=c(1, 2, 3, 4, 5, 6, 7, 8), labels=c("agriculture", "architecture", "construction", "administration", "forestry", "pedagogy", "engineering", "fine arts"))

#To create a scatter plot of salary against gender, you can use the following command:
ggplot(data, aes(x=gender, y=salary)) + geom_point() #This will create a scatter plot with gender on the x-axis and salary on the y-axis.

#To create a bar chart / histogram illustrating the number of graduates from each type of college, you can use the following command:
ggplot(data, aes(x=college)) + geom_bar()#. This will create a bar chart with college on the x-axis and the count of graduates on the y-axis.

#to create a scatter plot showing the relationship between the type of completed studies and earnings, with points differentiated by color according to gender, you can use the following command:
ggplot(data, aes(x=type_of_completed_studies, y=earnings, color=gender)) + geom_point()# This will create a scatter plot with type of completed studies on the x-axis, earnings on the y-axis, and points colored by gender.

#to create a scatter plot showing the relationship between the type of completed studies and earnings, with points differentiated by shape according to gender, and color according to the date of completion of studies, you can use the following command:
ggplot(data, aes(x=type_of_completed_studies, y=earnings, shape=gender, color=date_of_completion_of_studies)) + geom_point()# This will create a scatter plot with type of completed studies on the x-axis, earnings on the y-axis, points shaped by gender, and points colored by date of completion of studies.
