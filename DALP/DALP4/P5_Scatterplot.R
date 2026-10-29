plot(
  mtcars$wt,
  mtcars$mpg,
  main = "Vehicle Weight and Fuel Efficiency",
  xlab = "Weight (thousands of pounds)",
  ylab = "Miles per gallon (mpg)",
  pch = 19,
  col = "darkorange"
)

# Optional: add a linear trend line
abline(lm(mpg ~ wt, data = mtcars), col = "blue", lwd = 2)
