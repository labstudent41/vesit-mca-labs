# 2. MATRICES

# Create a matrix filled column by column
marks <- matrix(
  c(78, 85, 92, 69, 88, 95),
  nrow = 3,
  ncol = 2
)
marks

# Create a matrix filled row by row
marks_by_row <- matrix(
  c(78, 85, 92, 69, 88, 95),
  nrow = 3,
  byrow = TRUE
)
marks_by_row

# Add row and column names
rownames(marks_by_row) <- c("Asha", "Ben", "Carlos")
colnames(marks_by_row) <- c("Math", "Science")
marks_by_row

# Access matrix values
marks_by_row[1, 2]  # Row 1, column 2
marks_by_row[2, ]   # Entire second row
marks_by_row[, 1]   # Entire first column

# Matrix calculations
rowSums(marks_by_row)
colMeans(marks_by_row)
