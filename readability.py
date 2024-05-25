# resubmitting this new year's problem
from cs50 import get_string

letters = 0
# number of words equal number of total spaces +1
words = 1
sentences = 0

text = get_string("Text: ")

# calculating number of letters, words, sentences
for c in text:
    if c.isalpha():
        letters += 1
    elif c == " ":
        words += 1
    elif c == "." or c == "?" or c == "!":
        sentences += 1

# average number of letters per 100 words in the text
L = letters / words * 100
# average number of sentences per 100 words in the text
S = sentences / words * 100

# Coleman-Liau index
index = round(0.0588 * L - 0.296 * S - 15.8)

# printing the grade
if index >= 16:
    print("Grade 16+")
elif index < 1:
    print("Before Grade 1")
else:
    print("Grade", index)
