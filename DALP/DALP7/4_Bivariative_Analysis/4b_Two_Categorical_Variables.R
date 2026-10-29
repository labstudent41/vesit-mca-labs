# Example categorical variables
teaching_method <- factor(c(
  "Online",
  "Online",
  "Classroom",
  "Classroom",
  "Online",
  "Classroom",
  "Online",
  "Classroom",
  "Online",
  "Classroom"
))
result <- factor(c(
  "Pass",
  "Pass",
  "Pass",
  "Fail",
  "Fail",
  "Pass",
  "Pass",
  "Fail",
  "Pass",
  "Pass"
))

# Contingency table
result_table <- table(teaching_method, result)
result_table

# Row-wise proportions
prop.table(result_table, margin = 1)

# Chi-square test of association
chisq.test(result_table)
