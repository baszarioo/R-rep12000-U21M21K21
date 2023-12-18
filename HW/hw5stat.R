#1.A:
#Give data:
tickets_sold <- c(2.9, 3.3, 3.2, 3.2, 3.2, 3.0, 2.9, 3.1)
#Hypothesized mean:
mu_hyp <- 3.2
#significance level:
alpha <- 0.1
#Perform one-sample t-test:
test_result <- t.test(tickets_sold, mu=mu_hypothesized, alternative="less")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the mean is less than 3.2 thousand.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the mean is less than 3.2 thousand.\n")
}

#1.B:
# Perform two-sample t-test
test_result <- t.test(tickets_sold, mu = mu_hypothesized, alternative = "two.sided")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the mean is different from 3.2 thousand.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the mean is different from 3.2 thousand.\n")
}


#R2
#preform one-sample t-test:
test_result <- t.test(matches_data, mu = 64, alternative="g");
#display the test result:
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the mean is greater than 64.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the mean is greater than 64.\n")
}

#R3:
# Data for fabric samples washed with soap flakes
soap_flakes_data <- c(74.4, 75.1, 73.0, 72.8, 76.2, 74.6, 76.0, 73.4, 72.9, 71.6)

# Data for fabric samples washed with laundry detergent
detergent_data <- c(56.8, 57.8, 54.6, 59.0, 57.1, 58.2, 57.6)

# Given significance level
alpha <- 0.05

# Perform two-sample t-test assuming equal variances
test_result <- t.test(soap_flakes_data, detergent_data, var.equal = TRUE, alternative = "greater")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the degree of fabric washing with soap flakes is higher than with laundry detergent.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the degree of fabric washing with soap flakes is higher than with laundry detergent.\n")
}

#4:
# Load data from files
speeds_wednesday <- read.table("trams Wednesday.txt", header = TRUE)$Speed
speeds_sunday <- read.table("trams Sunday.txt", header = TRUE)$Speed

# Given significance level
alpha <- 0.05

# Perform one-sided two-sample t-test
test_result <- t.test(speeds_wednesday, speeds_sunday, alternative = "less")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the average speed of trams on Wednesday is less than on Sunday.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the average speed of trams on Wednesday is less than on Sunday.\n")
}

#5:
# Given data
pressure_before <- c(210, 180, 260, 270, 190, 250, 180, 200)
pressure_after <- c(180, 160, 220, 260, 200, 230, 180, 190)

# Given significance level
alpha <- 0.05

# Perform paired t-test
test_result <- t.test(pressure_before, pressure_after, paired = TRUE, alternative = "greater")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("Degrees of Freedom:", test_result$parameter, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the average blood pressure before administering the drug is higher than after its administration.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the average blood pressure before administering the drug is higher than after its administration.\n")
}

#6:
# Load data from survey.txt
survey_data <- read.table("survey.txt", header = TRUE)$Response

# Given data
total_surveyed <- 1100
non_readers <- 1090

# Hypothesized percentage
p_hypothesized <- 0.99

# Significance level
alpha <- 0.01

# Perform one-sample proportion test
test_result <- prop.test(non_readers, total_surveyed, p = p_hypothesized, alternative = "two.sided")

# Display the test result
cat("Test Statistic:", test_result$statistic, "\n")
cat("P-value:", test_result$p.value, "\n")

# Check if the null hypothesis is rejected
if (test_result$p.value < alpha) {
  cat("Reject the null hypothesis. There is enough evidence to suggest that the percentage of adult Poles who did not read any books in the past month is different from 99%.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that the percentage of adult Poles who did not read any books in the past month is different from 99%.\n")
}
