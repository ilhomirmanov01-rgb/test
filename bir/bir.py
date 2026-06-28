def count_passing_students(grades:list,passgrade:int):
    return sum( 1 for i in grades if passgrade <= i)
    


passgrade = int(input("O'tish balini kirriting: "))
grades = []
for i in range(int(input("Nechta taklabani balini kiritmoqcahisiz: "))):
    grade = int(input(">>>"))
    grades.append(grade)

natija = count_passing_students(grades,passgrade)
print(natija)