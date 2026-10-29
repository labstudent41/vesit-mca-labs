# Add Three Numbers
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))
c = float(input("Enter third number: "))

total = a + b + c

print("Sum =", total)

# Swap Two Numbers
# Using a third variable

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

temp = a
a = b
b = temp

print("After swapping:")
print("a =", a)
print("b =", b)

# Without using a third variable

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

a, b = b, a

print("After swapping:")
print("a =", a)
print("b =", b)

# Calculate the Area of a Triangle

base = float(input("Enter the base of the triangle: "))
height = float(input("Enter the height of the triangle: "))

area = 0.5 * base * height

print("Area of triangle =", area)

# Solve a Quadratic Equation

# For an equation of the form:

# ax2+bx+c=0
# ax2+bx+c=0

import cmath

a = float(input("Enter coefficient a: "))
b = float(input("Enter coefficient b: "))
c = float(input("Enter coefficient c: "))

if a == 0:
    print("This is not a quadratic equation.")
else:
    discriminant = b**2 - 4*a*c

    root1 = (-b + cmath.sqrt(discriminant)) / (2*a)
    root2 = (-b - cmath.sqrt(discriminant)) / (2*a)

    print("Root 1 =", root1)
    print("Root 2 =", root2)

# Use Bitwise Operators

a = int(input("Enter first integer: "))
b = int(input("Enter second integer: "))

print("a & b =", a & b)      # Bitwise AND
print("a | b =", a | b)      # Bitwise OR
print("a ^ b =", a ^ b)      # Bitwise XOR
print("~a =", ~a)            # Bitwise NOT
print("a << 1 =", a << 1)    # Left shift
print("a >> 1 =", a >> 1)    # Right shift

# Calculate Compound Interest

# Formula:

# A=P(1+r100n)nt
# A=P(1+100nr​)nt

# CI=A−P
# CI=A−P

principal = float(input("Enter principal amount: "))
rate = float(input("Enter annual interest rate (%): "))
time = float(input("Enter time in years: "))
frequency = int(input("Enter number of compoundings per year: "))

amount = principal * (1 + rate / (100 * frequency)) ** (frequency * time)
compound_interest = amount - principal

print("Final amount =", amount)
print("Compound interest =", compound_interest)

# Generate a Random Number Between 0 and 100

import random

number = random.randint(0, 100)

print("Random number =", number)

# Display the Calendar for January 2019

import calendar

print(calendar.month(2019, 1))

# Add Two Binary Numbers

binary1 = input("Enter the first binary number: ")
binary2 = input("Enter the second binary number: ")

number1 = int(binary1, 2)
number2 = int(binary2, 2)

sum_binary = number1 + number2

print("Sum in binary =", bin(sum_binary)[2:])
