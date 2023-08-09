if __name__ == '__main__':
    n = int(input())
    student_marks = {}

    if 2<=n<=10:
        for i in range(n):
            name, *line = input().split()
            scores = list(map(float, line))
            
            #Check if all marks are within the valid range
            if all(0<=score<=100 for score in scores):
                student_marks[name] = sum(scores) / len(scores)

            else:
                print("Invalid marks for", name)

        query_name = input()
        if query_name in student_marks:
            print("%.2f" % student_marks[query_name])
        else:
            print("Student not found")
    else:
        print("Invalid number of students")                        