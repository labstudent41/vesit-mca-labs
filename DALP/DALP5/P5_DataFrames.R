# 5. DATA FRAMES

# Create a data frame with columns of different types
students <- data.frame(
  name = c("Asha", "Ben", "Carlos", "Deepa"),
  age = c(19, 20, 19, 21),
  group = factor(c("Control", "Treatment", "Control", "Treatment")),
  score = c(78, 85, 92, 69)
)

# Display the data frame
students

# Inspect its structure and summary
str(students)
summary(students)
nrow(students)
ncol(students)
names(students)

# Access columns and rows
students$name
students[1, ]           # First row
students[, "score"]     # Score column
students[students$score >= 80, ]  # Rows with scores of at least 80

# Add a new column
students$passed <- students$score >= 70
students
