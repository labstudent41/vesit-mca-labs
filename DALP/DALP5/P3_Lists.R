# 3. LISTS

# Create a list containing different data types
student_record <- list(
  name = "Asha",
  age = 19,
  marks = c(78, 85, 92),
  enrolled = TRUE
)

# Display the list
student_record

# Access list elements
student_record$name
student_record[["age"]]
student_record[["marks"]]

# Select an element while retaining list structure
student_record["name"]

# Add a new named element
student_record$course <- "Statistics"
student_record
