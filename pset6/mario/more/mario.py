
def print_piramid(height):
    brick = "#"
    space = " "
    for i in range(1, height + 1):
        print(f"{space * (height - i)}{brick * i}  {brick * i}")

def get_correct_input():
    height = int(input("Height: "))
    if height >= 1 or height <= 8:
        return height
    else:
        get_correct_input()

def main():
    height = get_correct_input()
    print_piramid(height)

main()
