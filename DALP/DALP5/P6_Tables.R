# 6. TABLES

# One-way frequency table
group_counts <- table(students$group)
group_counts

# Convert counts to proportions
prop.table(group_counts)

# Two-way frequency table
group_by_pass <- table(students$group, students$passed)
group_by_pass

# Add row and column totals
addmargins(group_by_pass)

# Create a table from two vectors
subject <- c("Math", "Science", "Math", "Science", "Math")
result <- c("Pass", "Pass", "Fail", "Pass", "Pass")
table(subject, result)
