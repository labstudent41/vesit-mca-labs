# Example measurements recorded over six months
month <- 1:6
sales <- c(12, 15, 14, 18, 22, 25)

plot(
  month,
  sales,
  type = "o",
  main = "Monthly Sales",
  xlab = "Month",
  ylab = "Sales",
  col = "blue",
  pch = 16
)
