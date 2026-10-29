boxplot(
  mpg ~ factor(cyl),
  data = mtcars,
  main = "Fuel Efficiency by Number of Cylinders",
  xlab = "Cylinders",
  ylab = "Miles per gallon (mpg)",
  col = "lightgreen"
)
