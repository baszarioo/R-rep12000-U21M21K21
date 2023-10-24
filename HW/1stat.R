df <- read.csv("C:\\Users\\kubsoa\\Downloads\\Roczniaki.csv")
weight_column <- df$Peso
print(weight_column)
df$bmi <- df$Peso / (df$Altezza^2)
print(df)

#2
install.packages("foreign")
library(foreign)
file_path <- "C:\\Users\\kubsoa\\Downloads\\Employee data.sav"
dataf <- read.spss(file_path, to.data.frame=TRUE)
var_names <- names(dataf)
print(var_names)
#2.a
class(dataf$salbegin)
dataf$salbegin <- as.numeric(dataf$salbegin)
dataf$earning_level <- ifelse(dataf$salbegin <= 25, "low", 
                              ifelse(dataf$salbegin<=35, "average",
                                     "high"))
print(dataf)
#2.b
earning_level_counts <- table(dataf$earning_level)
print(earning_level_counts)
 
#2.c
write.table(dataf$earning_level, file = "C:\\Users\\kubsoa\\Downloads\\earnings.txt",
            col.names=FALSE, row.names=FALSE)
cat("'earning_level' saved to -> 'earnings.txt'\n")

#3
central_moments <- function(x, order.max) {
  n <- length(x)
  mean_x <- mean(x)
  moments <- numeric(order.max)
  for (i in 1:order.max) {
    moments[i] <- sum((x - mean_x)^i)/n
  }
  return(moments)
}
data_vector <- c(1,2,3,4,5)
central_moments(data_vector, 3)

