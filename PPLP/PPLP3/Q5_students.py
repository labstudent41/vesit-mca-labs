import sys

students = {
    1: {
        "name": "Vikas",
        "address": "Vasai",
        "age": 22,
        "class": "FYMCA-B",
        "marks": {"SDS": 49, "JFSD": 64, "DWM": 51, "UIUX": 57, "APM": 66}
    },
    2: {
        "name": "Prakash",
        "address": "Borivali",
        "age": 22,
        "class": "FYMCA-A",
        "marks": {"SDS": 59, "JFSD": 68, "DWM": 61, "UIUX": 77, "APM": 56}
    },
    3: {
        "name": "Niraj",
        "address": "Andheri",
        "age": 22,
        "class": "FYMCA-A",
        "marks": {"SDS": 79, "JFSD": 84, "DWM": 71, "UIUX": 67, "APM": 76}
    },
    4: {
        "name": "Karan",
        "address": "Mira Road",
        "age": 23,
        "class": "SYMCA-B",
        "marks": {"SDS": 69, "JFSD": 74, "DWM": 81, "UIUX": 67, "APM": 66}
    },
    5: {
        "name": "Ramesh",
        "address": "Panvel",
        "age": 22,
        "class": "FYMCA-B",
        "marks": {"SDS": 79, "JFSD": 84, "DWM": 91, "UIUX": 87, "APM": 66}
    },
}

def list_students(students):
    for student_id, details in students.items():
        print(f"{student_id}. {details["name"]}")
    print()

print("\n# List of Students")
list_students(students)

student_id = int(input("Select a student by ID: "))
if student_id not in students:
    print("Student ID not found.")
    sys.exit()

def student_details(student_id):
    for key, value in students[student_id].items():
        print("%-10s: %s" %(key, value))
    print()

print(f"Student '{students[student_id]["name"]}' was selected")
print("His details are as follows:")
student_details(student_id)

field = input("Enter a field to update: ")
if field not in students[student_id]:
    print("Field not found.")
    sys.exit()

field_value = students[student_id][field]
print(f"Current value is {field_value}.")
field_value = input("Enter the new value: ")
students[student_id][field] = field_value
print(f"{field} was updated.")

print("\n# Updated Student Data")
student_details(student_id)

if not input("Do you want to delete this student? : "):
    sys.exit()

del students[student_id]
print("Student was Explelled!")
print("\n# Final list of students:")
list_students(students)
