div_a_scores = list(map(int, input("Enter scores of division A: ").split()))
div_b_scores = list(map(int, input("Enter scores of division B: ").split()))
scores = div_a_scores + div_b_scores
length = len(scores)

# Bubble sort in ascending order:
for i in range(length):
    for j in range(length - i - 1):
        if scores[j] > scores[j+1]:
            scores[j], scores[j+1] = scores[j+1], scores[j]

print(f"The second largest element in the list is {scores[-2]}.")
