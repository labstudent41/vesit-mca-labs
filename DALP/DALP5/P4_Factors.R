# 4. FACTORS

# Create an unordered factor
group <- factor(c("Control", "Treatment", "Control", "Treatment"))
group
levels(group)

# Create an ordered factor
performance <- factor(
  c("Medium", "High", "Low", "Medium"),
  levels = c("Low", "Medium", "High"),
  ordered = TRUE
)
performance
levels(performance)

# Count category frequencies
table(group)
table(performance)
