from sys import argv
import re


class Person:
    def __init__(self, name, dnaList):
        self.name = name
        self.dnaSequence = dnaList


class Database:
    def __init__(self):
        self.database = []
        self.toSearch = []

    def populateDatabase(self, fileName):
        file = open(fileName, "r")
        for info in file:
            line = info.rstrip("\n").split(",")
            self.database.append(Person(line[0], line[1:]))
        for sequence in self.database[0].dnaSequence:
            self.toSearch.append([sequence])
        self.database.pop(0)
        file.close()

    def fillInformationToSearch(self, dna):
        for index in range(len(self.toSearch)):
            res = max(re.findall(
                '((?:' + re.escape(self.toSearch[index][0]) + ')*)', dna), key=len)
            self.toSearch[index].append(res.count(self.toSearch[index][0]))

    def findMatch(self, sequenceToCheck):
        for i in range(len(sequenceToCheck)):
            if self.toSearch[i][1] != int(sequenceToCheck[i]):
                return False
        return True

    def searchDatabase(self):
        for person in self.database:
            if self.findMatch(person.dnaSequence):
                print(person.name)
                return True
        print("No match")

    def getDNA(self, fileName):
        file = open(fileName, "r")
        self.fillInformationToSearch(file.read())

def checkDNA(data, dna):
    database = Database()
    database.populateDatabase(data)
    database.getDNA(dna)
    database.searchDatabase()

def main():
    if len(argv) != 3:
        print("Usage: python dna.py data.csv sequence.txt")
        return False
    checkDNA(argv[1], argv[2])
    return True

if __name__ == "__main__":
    main()
