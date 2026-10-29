data = {"name": "Vikas", "roll_no": 29}
print("\n# Initial Dictionary")
print(data, end="\n\n")

key = input("Enter new field: ")
value = input(f"Enter value for {key}: ")
data[key] = value
print(f"{key} added to the dictionary.")
print("\n# Updated Dictionary")
print(data, end="\n\n")

search_key = input("Enter a key to search: ")
if search_key in data:
    print(f"Key '{key}' found and it's value is '{value}'")
    if input("Do you want to delete it? "):
        del data[search_key]
        print(f"Key '{key}' destroyed!")
else:
    print("Key not found.")

print("\n# Final Dictionary")
print(data, end="\n\n")
