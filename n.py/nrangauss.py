#Matthew McGilvery
#LGPL3(or later)
#Random Number Generator, Gaussian
#2.3.20
#initialize a to 0 b to 1
import math, sys, random
a,b = 0,1
#while loop to print 0-9
while a < 10:
    print(a)
    ran = int(random.gauss(0,45))/int(random.gauss(90,55))
    a += ran
    print(ran)
#add random gaussian to initial 0 until a > 10