from os import system

i = 5
data = """from os import system

i = {2}
data = {0}{1}{0}

with open(f'Sully_{3}.py', 'w+') as file:
    file.write(data.format(3*chr(34), data, i-1, '{3}'))
if i <= 0:
    exit(0)
system(f"python3 Sully_{3}.py")
"""

with open(f'Sully_{i-1}.py', 'w+') as file:
    file.write(data.format(3*chr(34), data, i-1, '{i-1}'))
if i <= 0:
    exit(0)
system(f"python3 Sully_{i-1}.py")
