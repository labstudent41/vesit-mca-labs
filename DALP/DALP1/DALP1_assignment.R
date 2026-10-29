student <- "Vikas Kushwha Div B RollNo 29"
# Calculations in R:
print(21 * 78)
print(697 / 41)

student <- "Vikas Kushwha Div B RollNo 29"
# Assigning 39 to x:
x <- 39
# Assigning 22 to y:
y <- 22
# Performing operations:
z <- x - y
# Result:
print(z)

student <- "Vikas Kushwha Div B RollNo 29"
# Calcuating the square root of 2345:
result <- sqrt(2345)
print(result)
# Applying log2 transformation on the result:
log2(result)

student <- "Vikas Kushwha Div B RollNo 29"
# Defining vector vec1:
vec1 <- c(2, 5, 8, 12, 16)

student <- "Vikas Kushwha Div B RollNo 29"
# Generating numbers from 5 to 9 using x:y notation:
vec2 <- 5:9
print(vec2)

student <- "Vikas Kushwha Div B RollNo 29"
# Performing subtraction between vectors:
print(vec1 - vec2)

student <- "Vikas Kushwha Div B RollNo 29"
# Generating vectors with custom interval:
n100 <- seq(from = 2, by = 3, length.out = 100)

student <- "Vikas Kushwha Div B RollNo 29"
# Retrieving numbers on specific index:
n100[c(5, 10, 15, 20)]

student <- "Vikas Kushwha Div B RollNo 29"
# Retrieving numbers between index 10 to 30:
n100[c(10:30)]

student <- "Vikas Kushwha Div B RollNo 29"
# Stroing color of mouse:
mouse.color <- c("Yellow", "Red", "Green", "Black")
print(mouse.color)

student <- "Vikas Kushwha Div B RollNo 29"
# Printing color of second mouse:
print(mouse.color[2])

student <- "Vikas Kushwha Div B RollNo 29"
# Storing weight of mouse:
mouse.weight <- c(12, 15, 12.5, 18)
print(mouse.weight)

student <- "Vikas Kushwha Div B RollNo 29"
# Storing mouse info in a dataframe:
mouse.info <- data.frame(color = mouse.color, weight = mouse.weight)
print(mouse.info)
# Displaying the 3rd row:
print(mouse.info[3, ])
# Displaying the 1st column:
print(mouse.info[, 1])
# Displaying 4th row and 1st column:
print(mouse.info[4, 1])

student <- "Vikas Kushwha Div B RollNo 29"
setwd("C:/Users/Vikas Kushwaha/Documents/RPracticals")
getwd()

student <- "Vikas Kushwha Div B RollNo 29"
# Collecting student's data:
studentNames <- c("Gaurav", "Nimesh", "Guddi", "Rishabh", "Hariom", "Prachi")
studentHeight <- c(175, 171, 155, 165, 170, 157)
studentWeight <- c(80, 73, 48, 58, 67, 50)
studentData <- data.frame(
  Name = studentNames,
  Height = studentHeight,
  Weight = studentWeight
)
# Storing them into a CSV file:
write.csv(studentData, "DALP1/small_file.csv", row.names = FALSE)
# Reading data and printing it:
csvdata <- read.csv("DALP1/small_file.csv")
print(csvdata)

student <- "Vikas Kushwha Div B RollNo 29"
# Printing 3rd row:
print(csvdata[3, ])
# Calculating mean of the heights:
print(mean(csvdata$Height))

student <- "Vikas Kushwha Div B RollNo 29"
# Extract only weight column of csvdata:
print(csvdata$Weight)
# Check for every weight that is greater than 65:
print(csvdata$Weight > 65)
# Counting the number of weight where it is less than 65:
print(sum(csvdata$Weight < 65))

student <- "Vikas Kushwha Div B RollNo 29"
# Filtering for heavy weight students:
heavyweight <- csvdata[csvdata$Weight >= 70, ]
print(heavyweight)
# Writing to a file:
write.csv(heavyweight, "filtered_small_file.csv")
