number = int(input("Enter a number: "))

digits = str(number)
power = len(digits)
total = 0

for digit in digits:
    total += int(digit) ** power

if total == number:
    print(f"{number} is an armstrong number.")
else:
    print(f"{number} is not an armstrong number.")