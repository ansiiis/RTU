#!/usr/bin/python
#-*- coding: utf-8 -*-
#Šis darbs veikts python3!
import matplotlib.pyplot as plt
import numpy as np
#
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
#zimesana
a=0
b=3*np.pi
x=np.arange(a,b,0.5)
y=mans_sinuss(x)
plt.plot(x,y)
plt.grid()
#plt.show()
#funkcijas atvasinajuma aprekins
n=len(x)
y_prim=[]
for i in range(n-1): #(no,lidz,solis)
   #print(i, y[i], y[+1])
   #print(y[i+1]-y[i])/(x[i+1]-x[i]))
    y_prim.append((y[i+1]-y[i])/(x[i+1]-x[i]))
plt.plot(x[:n-1],y_prim)
plt.show()
