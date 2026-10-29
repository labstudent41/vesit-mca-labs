from functools import reduce

numbers = [1, 2, 3, 4, 5, 6]

# Filter: keep even numbers
even_numbers = list(filter(lambda n: n % 2 == 0, numbers))

# Map: square each number
squares = list(map(lambda n: n ** 2, numbers))

# Reduce: calculate the sum of all numbers
total = reduce(lambda total, n: total + n, numbers)

print("List of numbers: ", numbers)
print("Even numbers: ", even_numbers)
print("Square of each number: ", squares)
print("Total of numbers: ", total)
