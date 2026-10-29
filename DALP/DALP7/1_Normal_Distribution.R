# Parameters for the normal distribution
mu <- 70
sigma <- 10

# Density at x = 80
density_at_80 <- dnorm(80, mean = mu, sd = sigma)
density_at_80

# Probability that X is less than or equal to 80
prob_at_most_80 <- pnorm(80, mean = mu, sd = sigma)
prob_at_most_80

# Probability that X is between 60 and 80
prob_between_60_and_80 <-
  pnorm(80, mean = mu, sd = sigma) -
  pnorm(60, mean = mu, sd = sigma)
prob_between_60_and_80

# The 90th percentile
percentile_90 <- qnorm(0.90, mean = mu, sd = sigma)
percentile_90

# Generate 1,000 random observations
set.seed(123)
normal_data <- rnorm(1000, mean = mu, sd = sigma)

# Plot a histogram with an estimated density curve
hist(
  normal_data,
  probability = TRUE,
  main = "Simulated Normal Distribution",
  xlab = "Value",
  col = "lightblue",
  border = "white"
)

curve(dnorm(x, mean = mu, sd = sigma), add = TRUE, col = "red", lwd = 2)

# Calculate z-scores for selected observations
observations <- c(55, 70, 85)
z_scores <- (observations - mu) / sigma
z_scores
