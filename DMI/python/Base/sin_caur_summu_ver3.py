#!/usr/bin/python
#-*- coding: utf-8 -*-
from math import sin

#Šis darbs veikts python3!
x=float(eval(input("Lietotāj, ievadi argumentu x!\n")))
y=sin(x)
k=2
print("sin(%6.2f)=%6.2f"%(x,y))
a=(-1)**0*x**1/(1)
S=a
print("a=%6.2f S=%6.2f"%(a,S))
k=k+1
a=a*(-1)*x**2/((2*k)*(2*k+1))
S=S+a
print("a1=%6.2f S=%6.2f"%(a,S))
k=k+1
a=a*(-1)*x**2/((2*k)*(2*k+1))
S=S+a
print("a2=%6.2f S=%6.2f"%(a,S))
k=k+1
a=a*(-1)*x**2/((2*k)*(2*k+1))
S=S+a
print("a3=%6.2f S=%6.2f"%(a,S))
