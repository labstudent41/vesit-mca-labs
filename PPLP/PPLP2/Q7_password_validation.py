import re

password = input("Enter a password: ")

valid = (
    6 <= len(password) <= 16
    and re.search(r"[a-z]", password)
    and re.search(r"[A-Z]", password)
    and re.search(r"[0-9]", password)
    and re.search(r"[$#@]", password)
)

if valid:
    print("Valid Password.")
else:
    print("Invalid Password")
    print("Password should be of 6 to 16 characters long.")
    print("It should include:")
    print("- atleast one lowercase letter")
    print("- atleast one uppercase letter")
    print("- atleast one number letter")
    print("- atleast one symbol from $, # or @")
