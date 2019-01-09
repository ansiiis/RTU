#!/usr/bin/python
#-*- coding: utf-8 -*-
#Šis darbs veikts python3!
from math import sin
def mans_sinuss(x):
    a=(-1)**0*x**1/(1)
    S=a
    #print("a0=%6.2f S=%6.2f"%(a,S))
    f=500
    k=0
    n=1
    while k<=f:
        R=(-1)*x**2/((n*2)*(n*2+1))
        a=a*R
        S=S+a
       # print("a%d=%6.2f S%d=%6.2f"%(n,a,n,S))
        n=n+1
        k=k+1
    return S
x=float(eval(input("Lietotāj, ievadi argumentu x!\n")))
y=sin(x)
print("standarta(%6.2f)=%6.2f"%(x,y))
yy=mans_sinuss(x)
print("mans sin(%6.2f)=%6.2f"%(x,yy))
