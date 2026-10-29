number = input("Enter a number: ")

if number.isdigit() and number == number[::-1]:
    print(f"{number} is a Palindrome.")
else:
    print(f"{number} is not a Palindrome.")
