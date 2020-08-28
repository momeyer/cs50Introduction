
def getUserInput():
    return input("Text: ")


def findWords(text):
    return text.split()


def countLetters(words):
    numLetters = 0
    for word in words:
        for char in word:
            if char.isalpha():
                numLetters += 1
    return numLetters


def countSentences(text):
    numSentences = 0
    for char in text:
        if char in [".", "!", "?"]:
            numSentences += 1
    return numSentences


def computeGrade():
    text = getUserInput()
    words = findWords(text)
    wordsCount = len(words)
    lettersCount = countLetters(words)

    sentencesCount = countSentences(text)

    averageLetters = 0
    averageSentences = 0

    averageLetters = lettersCount / wordsCount * 100
    averageSentences = sentencesCount / wordsCount * 100

    gradeLevel = round(0.0588 * averageLetters - 0.296 * averageSentences - 15.8)

    if gradeLevel <= 1:
        print("Before Grade 1")
    elif gradeLevel >= 16:
        print("Grade 16+")
    else:
        print(f"Grade {gradeLevel}")


text1 = "One fish. Two fish. Red fish. Blue fish."
print(f"Got: ", end="")
computeGrade(text1)
print("Expected: Before Grade 1.")
print()
text2 = "Would you like them here or there? I would not like them here or there. I would not like them anywhere."
print(f"Got: ", end="")
computeGrade(text2)
print("Expected: Grade 2.")
print()
text3 = "Congratulations! Today is your day. You're off to Great Places! You're off and away!"
print(f"Got: ", end="")
computeGrade(text3)
print("Expected: Grade 3.")
print()
text4 = "Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard."
print(f"Got: ", end="")
computeGrade(text4)
print("Expected: Grade 5.")
print()
text5 = "In my younger and more vulnerable years my father gave me some advice that I've been turning over in my mind ever since."
print(f"Got: ", end="")
computeGrade(text5)
print("Expected: Grade 7.")
print()
text6 = 'Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, "and what is the use of a book," thought Alice "without pictures or conversation?"'
print(f"Got: ", end="")
computeGrade(text6)
print("Expected: Grade 8.")
print()
text7 = "When he was nearly thirteen, my brother Jem got his arm badly broken at the elbow. When it healed, and Jem's fears of never being able to play football were assuaged, he was seldom self-conscious about his injury. His left arm was somewhat shorter than his right when he stood or walked, the back of his hand was at right angles to his body, his thumb parallel to his thigh."
print(f"Got: ", end="")
computeGrade(text7)
print("Expected: Grade 8.")
print()
text8 = "There are more things in Heaven and Earth, Horatio, than are dreamt of in your philosophy."
print(f"Got: ", end="")
computeGrade(text8)
print("Expected: Grade 9")
print()
text9 = "It was a bright cold day in April, and the clocks were striking thirteen. Winston Smith, his chin nuzzled into his breast in an effort to escape the vile wind, slipped quickly through the glass doors of Victory Mansions, though not quickly enough to prevent a swirl of gritty dust from entering along with him."
print(f"Got: ", end="")
computeGrade(text9)
print("Expected: Grade 10")
print()
text10 = "A large class of computational problems involve the determination of properties of graphs, digraphs, integers, arrays of integers, finite families of finite sets, boolean formulas and elements of other countable domains."
print(f"Got: ", end="")
computeGrade(text10)
print("Expected: Grade 16+.")
