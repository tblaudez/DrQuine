# Comment outside main
display = print
if __name__ == '__main__':
    # Comment inside main
    data = """# Comment outside main
display = print
if __name__ == '__main__':
    # Comment inside main
    data = {0}{1}{0}
    display(data.format(3*chr(34), data))"""
    display(data.format(3*chr(34), data))
