# Exercise 1
A <- 13
B <- 27
C <- 14

sum_1 <- A + B + C
sum_2 <- sum(c(A, B, C))
mean_1 <- sum_1 / 3 
mean_2 <- mean(c(A, B, C))
product <- A * B * C

cat("# Exercise 1\n")
print(
  data.frame(
    Variables = c("sum_1", "sum_2", "mean_1", "mean_2", "product"),
    Values = c(sum_1, sum_2, mean_1, mean_2, product)
  )
)
cat("\n\n")

# -------------------------------------------------------------------------------------------------------
# Exercise 2
num_1 <- 13
num_2 <- 5

difference_1 <- num_1 - num_2
difference_2 <- diff(c(num_1, num_2))
power <- num_1 ^ num_2
remainder <- num_1 %% num_2

cat("# Exercise 2\n")
print(
  data.frame(
    Variables = c("difference_1", "difference_2", "power", "remainder"),
    Values = c(difference_1, difference_2, power, remainder)
  )
)
cat("\n\n")

# -------------------------------------------------------------------------------------------------------
# Exercise 3
S <- function(A, i, n){
  return (A * (1 + i / 100) ^ n)
}
output_1 <- S(1000, 12, 5)
output_2 <- S(800, 12, 5)

cat("# Exercise 3\n")
print(
  data.frame(
    Variables = c("output_1", "output_2"),
    Values = c(output_1, output_2)
  )
)
cat("\n\n")

# -------------------------------------------------------------------------------------------------------
# Exercise 4
five_years <- 5 * 365 * 24 * 60 * 60
two_months <- 2 * 20 * 24 * 60 * 60
four_days <- 4 * 24 * 60 * 60
three_hours <- 3 * 60 * 60
two_minutes <- 2 * 60
solution <- sum(c(five_years, two_months, four_days, three_hours, two_minutes))

cat("# Exercise 4\n")
print(
  data.frame(
    Variables = c("five_years", "two_months", "four_days", "three_hours", "two_minutes", "solution"),
    Values = c(five_years, two_months, four_days, three_hours, two_minutes, solution)
  )
)
cat("\n\n")

# -------------------------------------------------------------------------------------------------------
# Question 7
FV <- function(PV, r, n) {
    return (PV * (1 + r) ^ n)
}
future_value <- FV(1000, 0.08, 5)

cat("# Question 7\n")
print(
  data.frame(
    Variables = c("future_value"),
    Values = c(future_value)
  )
)
cat("\n\n")

# -------------------------------------------------------------------------------------------------------
# HM2
set.seed(12)
codes <- runif(200, 0, 200)

interval <- 10
hist(codes, breaks=200 / interval, main="Vestel Production", xlab="The Codes of The Products by Vestel", ylab="The Quantities by Vestel")

