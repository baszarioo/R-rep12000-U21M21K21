#1) LH:
#	build a compartment series (szereg przedzi) for analyzed data:	// use a cut().
# 		i. with equal lengths of series.
#		ii. containing 5 classes with( in approxiamtely) equal multiplicity/strength (liczebnosc)
#	#	Dominant: value of variable, # that repeats itself the most in analyzed data, so it describes the most casual (typowy) value of variable.

data("db");
x=length(db);
y=cut(db, sqrt(x)));
print(y);
table(y);

#??
csss <-cut( db, breaks=quantile(db, p=seq(0,1,length.out=5+1)), include.lowest=TRUE);
print(css);
table(css);

#quantile() function used to calculate the quantiles that divide the data into appoximately equal classes + cut() function assigns the data points to these classes.

#1b)
#in what compartment in what compartment ... there is a dominant? 
# Count the frequency of observations in each compartment
class_counts <- table(cs)
# Find the class with the highest frequency
dominant_class <- names(class_counts)[which.max(class_counts)]
# Print the result
cat("The dominant class for water level is:", dominant_class, "\n")

#2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
#DataBase Indometh contains information about concentration/intensity(stezenie) of indometacine( anti-inflammatory drug) in the blood. Analyze the variable conc, that contains numeric data about concentraion of dru (mcg/ml).
#2.a the amoount of sample: 
sample_size <- nrow(Idb);
n <- length(Idb$conc);
#2.b from what range/compartment the analzyed var, takes on the values?
range <- range(Indometh$conc)
#2.c mutual placement of mean(srdnia) and median
mean_conc <- mean(Indometh$conc)
median_conc <- median(Indometh$conc)
if (mean_conc > median_conc) {
  comment <- "The distribution of conc is skewed to the right."
} else if (mean_conc < median_conc) {
  comment <- "The distribution of conc is skewed to the left."
} else {
  comment <- "The distribution of conc is symmetric."
}
#2.d check the symmetry of the sample.
# Create a histogram
hist(Indometh$conc, main = "Histogram of Concentration", xlab = "Concentration", ylab = "Frequency", col = "lightblue", border = "black")

# Add a vertical line for the mean
abline(v = mean(Indometh$conc), col = "red", lwd = 2)

# Add a vertical line for the median
abline(v = median(Indometh$conc), col = "blue", lwd = 2)

# Add legend
legend("topright", legend = c("Mean", "Median"), col = c("red", "blue"), lwd = 2)
#2.e find the trimmmed mean
trimmed_mean <- mean(Indometh$conc, trim = 0.25)

#2.f check the concentration of conc;//
concentration_test <- var.test(Indometh$conc)
if (concentration_test$p.value < 0.05) {
  concentration_comment <- "The variance of conc is significantly different from zero."
} else {
  concentration_comment <- "The variance of conc is not significantly different from zero."
}

#2.g length of the interval containing the middle 50% of observationS:
middle_50 <- quantile(Indometh$conc, c(0.25, 0.75))
interval_length <- middle_50[2] - middle_50[1]

#33333333333333333333333333333333333333333333333333333333333333333333333333333333333333

#aggregate(): This is a function in R used for data aggregation or summarization. It is typically used to perform operations on subsets of data based on one #or more grouping variables.

#Sepal.Length ~ Species: This formula specifies that you want to aggregate the Sepal.Length variable by the Species variable. In other words, you want to #group the data by the species of the iris flowers.

#iris: This is the data frame that contains the data you want to aggregate.

#FUN: This parameter specifies the function or functions that you want to apply to the grouped data. In this case, it's set to a custom anonymous function.

#function(x) c(mean = mean(x), median = median(x), sd = sd(x)): This is an anonymous function that takes a vector x as input and calculates the mean, #median, and standard deviation of the values in x. The results are returned as a named vector where the names are "mean," "median," and "sd."

#The aggregate() function uses this custom function to apply the mean, median, and standard deviation calculations to the Sepal.Length values for each #species in the iris dataset. The result is a new data frame summary_data that contains the aggregated statistics for each species.

#For example, if you were to print summary_data, it would look like: