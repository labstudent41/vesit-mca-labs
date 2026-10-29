roll_numbers = (10, 20, 30, 20, 40)

print("Tuple:", roll_numbers)
print("First element:", roll_numbers[0])
print("Last element:", roll_numbers[-1])
print("Slice:", roll_numbers[1:4])
print("Length:", len(roll_numbers))
print("Count of 20:", roll_numbers.count(20))
print("Index of 30:", roll_numbers.index(30))
print("Is 40 present?", 40 in roll_numbers)

# Concatenate and repeat tuples
more_numbers = (50, 60)
print("Concatenated tuple:", roll_numbers + more_numbers)
print("Repeated tuple:", roll_numbers * 2)

# Tuples are immutable and cannot be directly updated.
# Thus, we convert them to a list to make changes and then, convert back.
temporary_list = list(roll_numbers)
temporary_list.append(50)
roll_numbers = tuple(temporary_list)
print("Tuple after adding an element via a list:", roll_numbers)

