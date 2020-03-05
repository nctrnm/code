#Author: Matthew McGilvery
#License: LGPL 3.0(or later)
#!/bin/python3
n= 15255/60 #avg daily impressions (60 day impression value / 60)
n_= 1050/60 #avg daily engagement (60 day engagement value / 60)
m= n_/n #avg eng/imp for a time t (n_/n)
npin21620={'dimp':round(n,2),'deng':round(n_,2), 'dengr':round(m,3)}
print(npin21620)
#{'dimp': 264.55, 'deng': 17.02, 'dengr': 0.064}
