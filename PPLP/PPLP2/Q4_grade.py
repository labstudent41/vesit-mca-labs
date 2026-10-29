import sys

mark1 = float(input("Enter marks for Subject 1: "))
mark2 = float(input("Enter marks for Subject 2: "))
mark3 = float(input("Enter marks for Subject 3: "))

average = (mark1 + mark2 + mark3) / 3
print(f"Your average marks is {average: .3f}.")

if average > 90:
    grade = "O"
elif average > 85:
    grade = "A+"
elif average > 80:
    grade = "A"
elif average > 75:
    grade = "B+"
elif average > 70:
    grade = "B"
elif average > 65:
    grade = "C+"
elif average > 60:
    grade = "C"
elif average > 55:
    grade = "D+"
elif average > 50:
    grade = "D"
elif average > 45:
    grade = "E+"
elif average > 40:
    grade = "E"
else:
    print("Oops! You failed the exam.")
    sys.exit()

print(f"You have scored {grade} grade.")
