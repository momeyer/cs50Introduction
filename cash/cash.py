
class Change:
    def __init__(self, total):
        self.total = total
        self.quarters = 0
        self.dimes = 0
        self.nickels = 0
        self.pennies = 0
        self.remainingChange = round(self.total * 100)

    def computeChange(self):

        self.quarters = 0
        self.dimes = 0
        self.nickels = 0
        self.pennies = 0

        if self.remainingChange >= 25:
            self.quarters = int(self.remainingChange/25)
            self.remainingChange -= (self.quarters * 25)

        if self.remainingChange >= 10:
            self.dimes = int(self.remainingChange/10)
            self.remainingChange -= self.dimes * 10
        
        if self.remainingChange >= 5:
            self.nickels = int(self.remainingChange/5)
            self.remainingChange -= (self.nickels * 5)
        
        if self.remainingChange >= 0:
            self.pennies = int(self.remainingChange/1)
            self.remainingChange -= (self.pennies * 1)

def getUserInput():
    return float(input('total: '))

def main():

    total = getUserInput()
    while (total < 0):
        total = getUserInput()

    change = Change(total)
    change.computeChange()
    # print("TOTAL VALUE ENTERED: %6.2f", change.total)
    print(f"quarters (0.25) {change.quarters}")
    print(f"dimes (0.10) {change.dimes}")
    print(f"nickles (0.05) {change.nickels}")
    print(f"pennies (0.01) {change.pennies}")


    print("Change owed: ", change.total)
    print("number of coins: ", change.quarters + change.dimes + change.nickels + change.pennies)

main()

