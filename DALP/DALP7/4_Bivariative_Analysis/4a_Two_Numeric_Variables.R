 # Example paired numeric variables
hours_studied <- c(2, 3, 4, 5, 6, 7, 8, 2, 5, 6)
exam_scores <- c(60, 65, 70, 75, 78, 85, 90, 58, 76, 82)

# Scatterplot
plot(hours_studied, exam_scores,
     main = "Study Hours and Exam Scores",
     xlab = "Hours Studied",
     ylab = "Exam Score",
     pch = 19,
     col = "blue")

# Correlation coefficient
cor(hours_studied, exam_scores)

# Test for linear correlation
cor.test(hours_studied, exam_scores)

# Fit and add a simple linear regression line
model <- lm(exam_scores ~ hours_studied)
abline(model, col = "red", lwd = 2)

# View regression results
summary(model)

