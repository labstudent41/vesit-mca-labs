print("# For Matrix A")
rows = int(input("Enter the number of rows: "))

# TODO: Convert all elements of matrix to integer

matrix1 = []
for i in range(rows):
    matrix1.append([int(n) for n in input(f"Enter row {i}: ").split(" ")])

print("\n# For Matrix B")

matrix2 = []
for i in range(rows):
    matrix2.append([int(n) for n in input(f"Enter row {i}: ").split(" ")])

matrix_total = []
cols = len(matrix1[0])

for i in range(rows):
    row_total = []
    for j in range(cols):
        row_total.append(matrix1[i][j] + matrix2[i][j])
    matrix_total.append(row_total)

print("Sum of the two matrices:")
for row_total in matrix_total:
    print(row_total)

