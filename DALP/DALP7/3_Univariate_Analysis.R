# Example numeric and categorical variables
scores <- c(72, 85, 90, 68, 77, 93, 81, 74, 88, 79)
group <- factor(c("A", "B", "B", "A", "A", "B", "A", "B", "B", "A"))

# Numeric variable: summary statistics
mean(scores)
median(scores)
min(scores)
max(scores)
range(scores)
var(scores)
sd(scores)
quantile(scores)

# Interquartile range
IQR(scores)

# Frequency and proportion tables for a categorical variable
group_counts <- table(group)
group_counts
prop.table(group_counts)

# Histogram and boxplot for the numeric variable
hist(
  scores,
  main = "Distribution of Scores",
  xlab = "Score",
  col = "lightgreen",
  border = "white"
)

boxplot(scores, main = "Boxplot of Scores", ylab = "Score", col = "lightblue")

# Bar chart for the categorical variable
barplot(
  group_counts,
  main = "Frequency by Group",
  xlab = "Group",
  ylab = "Frequency",
  col = "orange"
)
