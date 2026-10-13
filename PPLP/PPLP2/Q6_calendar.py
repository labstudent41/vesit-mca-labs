import calendar
import sys

month_name = input("Enter a month name: ").strip().lower()

months = {number: name for number, name in \
    enumerate(calendar.month_name) if name}

for month in months.items():
    if month_name in month[1].lower():
        break
else:
    print("Invalid month name")
    sys.exit()

if month[0] == 2:
    print("Note: February has 28, or 29 in the leap year.")
else:
    print(f"{month[1]} has {calendar.monthrange(2026, month[0])[1]} days.")
