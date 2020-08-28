


def getUserInput():
    return int(input('please enter height: '))

def printLines(height):
    for i in range(height):
       print(" "*(height - (i+1)) + "#"*(i+1))

def main():
    height = getUserInput()

    while height < 0 or height > 8:
        height = getUserInput()

    printLines(height)

main()
