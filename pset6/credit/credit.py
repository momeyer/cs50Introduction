from math import floor

def check_flag(firstDigits):
    American_Express = ["34", "37"]
    MasterCard = ["51", "52", "53", "54", "55"]

    if firstDigits in American_Express:
        print("AMEX")
    if firstDigits in MasterCard:
        print("MASTERCARD")
    if firstDigits[0] == "4":
        print("VISA")


def sumOddNumbers(card_number):
    result = 0
    oddNumbers = 0
    for i in range(1, (len(card_number)), 2):
        result = int(card_number[i]) * 2

        if result >= 10:
            oddNumbers += floor(result / 10)
            oddNumbers += round(result % 10)
        else:
            oddNumbers += result
    return oddNumbers


def sumEvenNumbers(card_number):
    evenNumbers = 0
    for i in range(0, len(card_number), 2):
        evenNumbers += int(card_number[i])
    return (evenNumbers)


def check_if_valid(card_number):
    if ((sumOddNumbers(card_number) + sumEvenNumbers(card_number)) % 10 == 0):
        return True
    else:
        return False


def reverse_card_number(card_number):
    return card_number[::-1]

def get_card_number():
    card_number = input("Number: ")
    firstDigigs = card_number[slice(2)]

    if len(card_number) not in [15, 16, 13]:
        print("INVALID")
        return False
    if check_if_valid(reverse_card_number(card_number)):
        check_flag(firstDigigs)
