# 1. Install and load necessary packages:
install.packages("dplyr")
install.packages("tidyr")

# The following package provides the piping functionality
# as declared by the %>% symbol.
library(dplyr)

# The following package provides the 'replace_na' function
library(tidyr)

# 2. Declare a sample data set
students <- data.frame(
  Student_ID = 1:6,
  Full_Name = c("Ava", "Ben", "Cara", "Dan", "Eva", "Finn"),
  Age = c(20, 22, NA, 19, 21, 23),
  Score = c(95, 82, 71, NA, 32, 58),
  Department = c("Science", "Arts", "Science", NA, "Arts", "Science")
)
students

# 3. Naming, renaming and adding variable
students <- students %>%
  rename(
    StudentId = Student_ID,
    Name = Full_Name,
  ) %>%
  mutate(
    # Add a variable
    Passed = if_else(Score >= 40, TRUE, FALSE, missing = NA),
  )
students

# 4. Dealing with missing data

# Option A: Remove rows with missing values in selected columns
studentsComplete <- students %>%
  filter(!is.na(Age), !is.na(Score))
studentsComplete

# Option B: Replace missing numeric values with the column mean
studentsFilled <- students %>%
  mutate(
    Age = if_else(is.na(Age), mean(Age, na.rm = TRUE), Age),
    Score = if_else(is.na(Score), mean(Score, na.rm = TRUE), Score)
  )
studentsFilled

# Option C: Replace missing categorical values with "Unknown"
studentsFilled <- studentsFilled %>%
  mutate(Department = tidyr::replace_na(Department, "Unknown"))
studentsFilled

# 5. Dealing with categorical data

# Convert a character column to a factor
studentsFilled <- studentsFilled %>%
  mutate(
    Department = factor(Department),
    # Set an explicit order for an ordinal category
    Grade = factor(
      case_when(
        Score >= 90 ~ "O",
        Score >= 80 ~ "A",
        Score >= 70 ~ "B",
        Score >= 60 ~ "C",
        Score >= 50 ~ "D",
        Score >= 40 ~ "E",
        TRUE ~ "F"
      ),
      levels = c("F", "E", "D", "C", "B", "A", "O"),
      ordered = TRUE
    )
  )
studentsFilled

# 6. Data reduction using subsetting

# Keep only selected columns and rows meeting a condition
scienceStudents <- studentsFilled %>%
  filter(Department == "Science", Age >= 20) %>%
  select(StudentId, Name, Age, Score, Passed)
scienceStudents
