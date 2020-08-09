#Matthew McGilvery
#8.8.2020
#nctrnm.com
#Spotify monthly valuation script
#!/bin/python3
x=0
print('where x is a desired amount of streams per month to reach a desired revenue of y per year at a streaming rate of .0075 dollars a stream over 12 months.')
y = input("Enter your desired amount of revenue per year: ")
x = int((y/.0075)/12)
z = int(x/12)
print("To earn $" + str(y) + " a year from Spotify, you would need to yield " + str(x) + " streams per month, and " + str(z) + " listeners per month")
        


