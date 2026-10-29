# 1. Load and inspect the data

# Load the built-in dataset
data(mtcars)

# View the first six rows
head(mtcars)

# Check the number of rows and columns
dim(mtcars)

# Display variable names and data types
str(mtcars)

# Get a statistical summary of each variable
summary(mtcars)

# 2. Check missing values and duplicated rows

# Count missing values in each column
colSums(is.na(mtcars))

# Count duplicated rows
sum(duplicated(mtcars))

# 3. Univariate analysis

# Summary statistics for miles per gallon
mean(mtcars$mpg)
median(mtcars$mpg)
sd(mtcars$mpg)
range(mtcars$mpg)
quantile(mtcars$mpg)

# Histogram of miles per gallon
hist(
  mtcars$mpg,
  main = "Distribution of Miles per Gallon",
  xlab = "Miles per gallon (mpg)",
  col = "lightblue",
  border = "white"
)

# Boxplot of miles per gallon
boxplot(
  mtcars$mpg,
  main = "Boxplot of Miles per Gallon",
  ylab = "Miles per gallon (mpg)",
  col = "lightgreen"
)

# Frequency table for number of cylinders
table(mtcars$cyl)

# Bar chart for number of cylinders
barplot(
  table(mtcars$cyl),
  main = "Cars by Number of Cylinders",
  xlab = "Number of cylinders",
  ylab = "Number of cars",
  col = "orange"
)

# 4. Bivariate analysis

# Scatterplot of weight and fuel efficiency
plot(
  mtcars$wt,
  mtcars$mpg,
  main = "Fuel Efficiency vs. Weight",
  xlab = "Weight (1000 lbs)",
  ylab = "Miles per gallon (mpg)",
  pch = 19,
  col = "blue"
)

# Add a fitted linear trend line
abline(lm(mpg ~ wt, data = mtcars), col = "red", lwd = 2)

# Compare fuel efficiency across cylinder groups
boxplot(
  mpg ~ factor(cyl),
  data = mtcars,
  main = "Fuel Efficiency by Number of Cylinders",
  xlab = "Number of cylinders",
  ylab = "Miles per gallon (mpg)",
  col = "lightblue"
)

# 5. Calculate correlations

# Pearson correlation between weight and fuel efficiency
cor(mtcars$wt, mtcars$mpg, method = "pearson")

# Spearman correlation between weight and fuel efficiency
cor(mtcars$wt, mtcars$mpg, method = "spearman")

# Correlation matrix for all numeric variables
cor_matrix <- cor(mtcars, method = "pearson")
round(cor_matrix, 2)

# If the dataset contains missing values, use
#   use = "complete.obs"
# to calculate correlations using rows that have complete data for the variables involved:

cor_matrix <- cor(
  mtcars,
  use = "complete.obs",
  method = "pearson"
)

round(cor_matrix, 2)

# 6. Create a correlation plot
# The corrplot package provides a visual display of a correlation matrix.
# Install it once if needed, then load it.

# Install once if needed:
# install.packages("corrplot")

library(corrplot)

corrplot(
  cor_matrix,
  method = "color",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  tl.srt = 45,
  title = "Correlation Matrix of mtcars Variables",
  mar = c(0, 0, 2, 0)
)

# In this plot, colors show the direction and strength of correlations,
# while the numbers display the coefficients.
# The type = "upper" setting shows only one half of the symmetric matrix.

# 7. Create a scatterplot matrix
# A scatterplot matrix is useful for examining pairwise relationships among selected numeric variables.

selected_data <- mtcars[, c("mpg", "disp", "hp", "wt")]

pairs(
  selected_data,
  main = "Scatterplot Matrix of Selected mtcars Variables",
  pch = 19,
  col = "steelblue"
)
