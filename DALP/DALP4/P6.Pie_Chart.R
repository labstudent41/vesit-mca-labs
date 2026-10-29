cylinder_counts <- table(mtcars$cyl)

pie(
  cylinder_counts,
  labels = paste(names(cylinder_counts), "cylinders"),
  main = "Share of Cars by Cylinder Count",
  col = c("gold", "skyblue", "lightgreen")
)
