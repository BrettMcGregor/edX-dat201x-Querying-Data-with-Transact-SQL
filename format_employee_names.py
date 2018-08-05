with open('employee_names.csv', newline="\r\n") as file:
    names = file.readlines()

print(names)
for name in names:
    print(name, end="")
formatted = []
for name in names:
    name = name.strip("\r\n")
    formatted.append(tuple(name.split(", ")))

for name in formatted:
    print(name, end=",\n")
