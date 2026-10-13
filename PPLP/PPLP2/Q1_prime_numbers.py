print("Prime numbers from 0 to 100")

for number in range(1, 101):
    is_prime = True
    for divisor in range(2, int(number ** 0.5) + 1):
        if number % divisor == 0:
            is_prime = False
            break
    if is_prime:
        print(number, end="  ")

print()
