#!/usr/bin/python
#-*- coding: utf-8 -*-
from math import sin

#Šis darbs veikts python3!
x=float(eval(input("Lietotāj, ievadi argumentu x!\n")))
y=sin(x)
print("sin(%6.2f)=%6.2f"%(x,y))
k=0
a0=(-1)**0*x**1/(1)
S=a0
print("a0=%6.2f S=%6.2f"%(a0,S))
a1=(-1)**1*x**3/(1*2*3)
S=S+a1
print("a1=%6.2f S=%6.2f"%(a1,S))
a2=(-1)**2*x**5/(1*2*3*4*5)
S=S+a2
print("a2=%6.2f S=%6.2f"%(a2,S))
a3=(-1)**3*x**7/(1*2*3*4*5*6*7)
S=S+a3
print("a3=%6.2f S=%6.2f"%(a3,S))
