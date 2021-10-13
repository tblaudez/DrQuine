# The one and only comment
def display(file, data):
    file.write(data)


def grace(data):
    with open('Grace_kid.py', 'w+') as file:
        display(file, data)


datastring = """# The one and only comment
def display(file, data):
    file.write(data)


def grace(data):
    with open('Grace_kid.py', 'w+') as file:
        display(file, data)


datastring = {0}{1}{0}
grace(datastring.format(3*chr(34), datastring))
"""
grace(datastring.format(3*chr(34), datastring))
