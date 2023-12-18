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

