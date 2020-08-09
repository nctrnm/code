#Author:Matthew McGilvery
#Cubic Area Finder
#Accepts 3 values e, f, g, and multiplies them together. 
#nctrnm.com
#GPL3orLater

def multiply(a, b, c):
    c = a * b * c
    return c
#lambda method
e=input("enter a # ")
f=input("enter a # ")
g=input("enter a # ")
multiply= lambda e, f, g: e * f * g
print(multiply(e,f,g))
#License: LGPL3
