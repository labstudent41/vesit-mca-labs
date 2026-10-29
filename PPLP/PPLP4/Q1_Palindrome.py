def is_palindrome(text):
    text = text.lower()

    # Base case: zero or one character is a palindrome:
    if len(text) <= 1:
        return True

    # Compare the first and last characters, then check the middle
    if text[0] != text[-1]:
        return False

    return is_palindrome(text[1:-1])

word = input("Enter a word: ")

if is_palindrome(word):
    print(word, "is a palindrome")
else:
    print(word, "is not a palindrome")