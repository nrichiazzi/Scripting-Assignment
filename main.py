#/usr/bin/python
import random
import wikipedia
import pandas as pd
from datetime import datetime, time, timedelta

intervals = list(pd.date_range('2013-01-01T09:00:00Z', '2013-01-01T11:59:59Z', freq = '1.079S'))

wiki = wikipedia.page('Amazon S3')
text = wiki.content
filteredWhiteSpacesText = text.split("\n")
filteredText = list(filter(lambda x:
                            x != '' and
                            "==" not in x and
                            "http://" not in x and
                            "https://" not in x,
                            filteredWhiteSpacesText))

def getRandomSentence():
    return random.choice(filteredText)

def getTime(dateTime):
    return dateTime.strftime("%Y%m%d|%H:%M:%S")

def getStatus():
    return random.choice(["OK", "TEMP", "PERM"])

def getPid():
    return random.choice(range(3000,5001))

def concatText(time):
    return getTime(time) + "|" + str(getPid()) + "|" + getStatus() + "|" + getRandomSentence()

def formatLog(text):
    textLength = len(text)
    if (textLength < 500):
        text = text + "|" + "x" * (500 - textLength - 2)
    else:
        text = text[:499]
    return text + "|\n"

if __name__ == '__main__':
    f = open("demofile2.txt", "a")
    for i in range(0,9999):
        a = formatLog(concatText(intervals[i]))
        print(a)
        f.write(a)
    f.close()

