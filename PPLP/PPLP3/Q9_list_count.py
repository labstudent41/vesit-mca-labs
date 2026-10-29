items = [29, "Vikas", "Kushwaha", [43.5, 47.2, 52.6], ("FY", "MCA"), "B"]

count = 0

for item in items:
    if isinstance(item, tuple):
        break
    count += 1

print("Elements before the first tuple:", count)
