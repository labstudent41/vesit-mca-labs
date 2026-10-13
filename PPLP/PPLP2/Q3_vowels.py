character = input("Enter a character: ")

if len(character) != 1 or not character.isalpha():
    print("Please enter an alphabetic character.")
elif character in "aeiou":
    print(character, "is a vowel.")
else:
    print(character, "is a consonant.")
