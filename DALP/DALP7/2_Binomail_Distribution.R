# Parameters for the binomial distribution
n <- 10
p <- 0.30

# Probability of exactly 3 successes
prob_exactly_3 <- dbinom(3, size = n, prob = p)
prob_exactly_3

# Probability of at most 3 successes
prob_at_most_3 <- pbinom(3, size = n, prob = p)
prob_at_most_3

# Probability of at least 3 successes
prob_at_least_3 <- 1 - pbinom(2, size = n, prob = p)
prob_at_least_3

# Smallest number of successes with cumulative probability
# of at least 0.95
quantile_95 <- qbinom(0.95, size = n, prob = p)
quantile_95

# Generate 1,000 binomial outcomes
set.seed(123)
binomial_data <- rbinom(1000, size = n, prob = p)

# Display simulated frequencies
table(binomial_data)

# Plot the theoretical probability mass function
success_counts <- 0:n
probabilities <- dbinom(success_counts, size = n, prob = p)

plot(
  success_counts,
  probabilities,
  type = "h",
  lwd = 4,
  main = "Binomial Distribution",
  xlab = "Number of successes",
  ylab = "Probability",
  col = "blue"
)
points(success_counts, probabilities, pch = 16, col = "blue")
