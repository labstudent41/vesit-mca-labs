# 1. VECTORS

# Create vectors of different types
numbers <- c(10, 20, 30, 40, 50)
names <- c("Asha", "Ben", "Carlos")
passed <- c(TRUE, TRUE, FALSE, TRUE)

# Display vectors
numbers
names
passed

# Access and update vector elements
numbers[2]            # Second element
numbers[c(1, 3, 5)]  # First, third, and fifth elements
numbers[2] <- 25     # Replace the second element
numbers

# Vectorized operations
numbers * 2
sum(numbers)
mean(numbers)
length(numbers)
