import calculator

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
format = "%-20s: %4d"
print(format % ("Addition", calculator.add(a, b)))