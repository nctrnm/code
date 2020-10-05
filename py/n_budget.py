#Matthew McGilvery
#nctrnm.com
#GPL3
#Personal Economics Marginal Budget Script
#this is a script that I need to budget my revenue as a gig worker
#!/bin/python
#budget: b, needs: n, wants: w, savings: s
#you enter your budget here or the total revenue for the given time period OR revenue event
b = input('Enter your budget: ')
#n= needs expenditure
n=int(b)/2
#w= wants expenditure
w=int(b)/6
#s = savings expenditure
s=int(b)/5
#print out of aforementioned budget variables
print('budget: ' + str(b) + ', needs: ' + str(n) + ', wants: ' + str(w) + ', savings: ' + str(s))

