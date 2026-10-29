# Compare exam scores across groups
aggregate(scores, by = list(Group = group), FUN = mean)
aggregate(scores, by = list(Group = group), FUN = sd)

# Boxplot of numeric scores by group
boxplot(
  scores ~ group,
  main = "Scores by Group",
  xlab = "Group",
  ylab = "Score",
  col = c("lightblue", "lightgreen")
)
