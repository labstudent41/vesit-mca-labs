sem1_scores = {
    "SDS": 49, "JFSD": 64, "DWM": 51, "UIUX": 57, "APM": 66
}
sem2_scores = {
    "CAPS": 59, "AIML": 68, "RM": 61, "IOT": 77, "CSL": 56
 }

fy_scores = sem1_scores.copy()
fy_scores.update(sem2_scores)

print("Result of First Year Exam:")
for key, value in fy_scores.items():
    print(f"{key}\t: {value}")

total_marks = sum(fy_scores.values())
rated_marks = len(fy_scores) * 100
print(f"\nStudent scored {total_marks} out of {rated_marks} in his first year of MCA.")
