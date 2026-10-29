sentence = input("Enter a sentence: ")

# Convert to lowercase and remove common punctuations
for punctuation in ".,!?;:'\"()[]{}":
    sentence = sentence.replace(punctuation, "")

word_counts = {}

for word in sentence.lower().split():
    word_counts[word] = word_counts.get(word, 0) + 1

print("Count of word occurrences:")
for word, count in word_counts.items():
    print(f"{word}\t: {count}")
