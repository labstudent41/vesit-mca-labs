temp_in_celsius = [0, 10, 20, 30, 40]

temp_in_fahrenheit = list(map(lambda c: (c * 9 / 5) + 32, temp_in_celsius))

print("Celsius:", temp_in_celsius)
print("Fahrenheit:", temp_in_fahrenheit)