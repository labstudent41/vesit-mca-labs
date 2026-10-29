def binary(n):
    if n < 2:
        return str(n)
    return binary(n // 2) + str(n % 2)

# number = int(input("Enter a positive decimal number: "))

# if number < 0:
#     print("Please enter a positive number.")
# else:
#     print(f"Binary equivalent of {number} is {binary(number)}.")

for i in range(16):
    print("%4d: %04d" % (i, int(binary(i))))