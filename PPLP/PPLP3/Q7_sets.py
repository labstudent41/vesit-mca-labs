fy_students = {"Vikas", "Prem", "Guddi"}
sy_students = {"Yash", "Karan"}

# Add or remove elements
fy_students.remove("Vikas")
fy_students.add("Bhoot")
sy_students.add("Bhoot")

print("FY students list:", fy_students)
print("SY students list:", sy_students)

# Set Operations
print("Union:", fy_students | sy_students)
print("Intersection:", fy_students & sy_students)
print("Difference:", fy_students - sy_students)
print("Symmetric difference:", fy_students ^ sy_students)
