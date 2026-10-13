# 1. Install packages
# Install a package once (or when you need to update it).
install.packages("readxl")
install.packages("writexl")

# 2. Load packages
library(readxl)
library(writexl)

# Alternatively, call a package function without attaching the package:
# readxl::read_excel("data.xlsx")


# 3. Data types and checking variable types
number <- 42
decimal <- 3.14
text <- "hello"
is_ready <- TRUE

class(number)        # "numeric"
typeof(number)       # underlying storage type
str(text)            # compact structure
is.numeric(number)   # TRUE
is.character(text)   # TRUE
is.logical(is_ready) # TRUE

# Convert between common types
as.character(number)
as.numeric("12.5")
as.logical(1)       # TRUE


# 4. Create and print common objects

# Vector: one-dimensional; elements generally share a type
my_vector <- c(10, 20, 30)
print(my_vector)

# Matrix: two-dimensional; elements share a type
my_matrix <- matrix(1:6, nrow = 2, ncol = 3)
print(my_matrix)

# List: can contain different types and object sizes
my_list <- list(name = "Vikas", age = 22, scores = c(85, 92))
print(my_list)

# Factor: represents categorical data
my_factor <- factor(c("low", "high", "low"),
                    levels = c("low", "high"))
print(my_factor)
levels(my_factor)

# Data frame: columns can have different types
my_data_frame <- data.frame(
  name = c("Vikas", "Ganesh"),
  age = c(22, 25),
  passed = c(TRUE, FALSE)
)
print(my_data_frame)

# Table: frequency counts
my_table <- table(c("red", "blue", "red", "green", "red"))
print(my_table)


# 5. Combine data by columns or rows
left <- data.frame(id = 1:3, name = c("A", "B", "C"))
right <- data.frame(score = c(80, 90, 85))

combined_columns <- cbind(left, right)
print(combined_columns)

more_rows <- data.frame(id = 4:5, name = c("D", "E"))
combined_rows <- rbind(left, more_rows)
print(combined_rows)


# 6. Working directory
getwd()                     # Show current working directory
# setwd("C:/Users/YourName/Documents")  # Windows example
# setwd("~/Documents")                  # macOS/Linux example


# 7. Built-in datasets
data()                      # List available datasets
data("mtcars")              # Load a built-in dataset
head(mtcars)
str(mtcars)


# 8. Remove objects
temporary_object <- 123
rm(temporary_object)        # Remove one object
# rm(list = ls())            # Remove all objects in the workspace


# 9. Attach and detach data
# Attaching lets you refer to columns by name, but can cause name conflicts.
attach(mtcars)
mean(mpg)
detach(mtcars)

# Safer alternative: refer to columns through the data frame.
mean(mtcars$mpg)


# 10. Read data from the console
# Type values at the prompt, then press Enter.
console_values <- scan()

# Read one line of text:
console_text <- readline("Enter a value: ")


# 11. Read and write CSV files
# Read a CSV file
csv_data <- read.csv("DALP1/students.csv", header = TRUE)

# Write a data frame to a CSV file
write.csv(csv_data, "DALP1/output.csv", row.names = FALSE)


# 12. Read and write Excel files
# Read the first worksheet in an Excel file
excel_data <- read_excel("DALP1/grades.xlsx")

# Read a named worksheet
excel_data <- read_excel("DALP1/grades.xlsx", sheet = "Sheet1")

# Write a data frame to an Excel file
write_xlsx(excel_data, "DALP1/output.xlsx")


# 13. Other common data sources
# Tab-delimited text file:
tab_data <- read.table("DALP1/students.tsv", header = TRUE)
tab_data

# R binary formats:

# Data frame
my_data_frame <- data.frame(
  name = c("Vikas", "Ganesh"),
  age = c(22, 25),
  passed = c(TRUE, FALSE)
)
print(my_data_frame)

save(my_data_frame, file = ".RData")
load(".RData")

saveRDS(my_data_frame, "DALP1/data.rds")
restored_data <- readRDS("DALP1/data.rds")
restored_data
