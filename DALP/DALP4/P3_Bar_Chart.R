cylinder_counts <- table(mtcars$cyl)

barplot(
  cylinder_counts,
  main = "Cars by Number of Cylinders",
  xlab = "Cylinders",
  ylab = "Number of cars",
  col = "cornflowerblue"
)
