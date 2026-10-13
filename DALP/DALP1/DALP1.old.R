# To Print String:
studentName <- "Vikas Kushwaha"
print(studentName)

# # To set current working directory
# setwd("E:/RPracticals")

# To get current working directory
getwd()

# To list all the files
dir()

# To assign a variable
year <- 2026
print(year)

# To get object type
class(year)

# To print without the print() function
year

# To print explicitly
print(year)

# Type checking
is.numeric(year)

# Type conversion
age <- "22"
as.integer(age)

# Vector definition
vikasBuses <- c(361, 362, 365)
print(vikasBuses)

# Logical vectors
logicalVector <- vector(mode = "logical", length = 6)
print(logicalVector)

# Vector size
length(vikasBuses)

# Arithmetic operations
salary <- 20000
taxes <- 2000
salary + taxes
salary - taxes
salary * taxes
salary / taxes
salary^taxes

# Matrix definition
vikasAllBuses <- matrix(
  c(361, 362, 363, 364, 365, 366, 367, 368, 369),
  nrow = 3,
  ncol = 3
)
print(vikasAllBuses)

# Matrix Properties
dim(vikasAllBuses)
attributes(vikasAllBuses)

# Row wise matrix
vikasAllBuses <- matrix(
  c(361, 362, 363, 364, 365, 366, 367, 368, 369),
  nrow = 3,
  ncol = 3,
  byrow = TRUE
)
print(vikasAllBuses)

# Matrix combination
vikasMumbaiBuses <- c(361, 362, 363)
vikasThaneBuses <- c(461, 462, 463)
cbind(vikasMumbaiBuses, vikasThaneBuses)
rbind(vikasMumbaiBuses, vikasThaneBuses)

# Matrix operations
vikasDay1Bills <- c(20, 80, 40)
vikasDay2Bills <- c(40, 80, 60)

billSum <- vikasDay1Bills + vikasDay2Bills
print(billSum)

billDifferene <- vikasDay1Bills - vikasDay2Bills
print(billDifferene)

billQuotient <- vikasDay1Bills / vikasDay2Bills
print(billQuotient)

billProduct <- vikasDay1Bills * vikasDay2Bills
print(billProduct)

# R List
vikasDetails <- list(9, "Vikas", "B", 54.5)
print(vikasDetails)

# R factor
colors <- factor(c("red", "blue", "green", "red", "blue"))
print(colors)

# Factor levels
levels(colors)

# Data Frames
bus <- c(361, 362, 363)
pickup <- c("Kurla", "Kamgar", "Thakkar")
destination <- c("Basant", "Navjeevan", "Chembur")
busDf <- data.frame(
  "BusNo" = bus,
  "PickupLocation" = pickup,
  "Destination" = destination
)
print(busDf)

# Access a specific column:
print(busDf$PickupLocation)

# Filter rows where BusNo > 361
print(subset(busDf, BusNo > 361))

# Get no. of columns inside the data frame
ncol(busDf)

# Tables
numbers <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), ncol = 2, byrow = TRUE)

# Install packages
install.packages("readxl")
install.packages("readr")
install.packages("data.table")
install.packages("ggplot2")

# Import packages
library("readxl")
library("readr")
library("data.table")
library("ggplot2")

# Read CSV files
print(read.csv("DALP1/students.csv", sep = ","))

# Save data frames into text files
studentDf <- data.frame(Name = c("Vikas", "Ramesh"), RollNo = c(21, 22))
write.csv(studentDf, "output.csv", row.names = FALSE)
read.csv("DALP1/output.csv")

# Reading Excel Data using XLConnect
install.packages("XLConnect")
library(XLConnect)

# Load the Excel file
workbook <- loadWorkbook("DALP1/grades.xlsx")

# Read the data from a speicific sheet
data <- readWorksheet(workbook, sheet = "Sheet1")

# Display the first few rows of the data
head(data)

# Create a matrix
matA <- matrix(1:9, nrow = 3, ncol = 3)

# Access the element in second row, third column
print(matA[2, 3])

# Access the entire second row
print(matA[2, ])

# Access first two rows and first two columns
print(matA[1:2, 1:2])
