#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#2.14.20
#!/bin/python3
#import random lib
import random
#initalize a and b to 0 and 1
a,b=0,1
#while loop to iterate through a values 0 to random int between 0 and 8
while a <= int(random.randint(0,8)):
    #print a values formatted
    print('a: ' + str(a))
    #iterate a +1
    a=a+b
