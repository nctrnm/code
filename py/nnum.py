#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#Learning number types in py
#!/bin/python3
#numbers(binary, octal, hex, dec)
binx = 0b01
octx = 0o12
hexx = 0xA
decx = 2
#print(binx)
#print(octx)
#print(hexx)
#print(decx)

#numbers (float + int) and list
num = 4.0
num2 = num * decx
message = [num, num2, decx, hexx, octx, binx] 
print(message[0])
print('num')
print(message[1])
print('num2')
print(message[2])
print('decx')
print(message[3])
print('hexx')
print(message[4])
print('octx')
print(message[5])
print('binx')
print(num2)