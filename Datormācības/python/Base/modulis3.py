#!/usr/bin/python
#-*- coding: utf-8 -*-

print("Lietotāj, ievadi skaitli un programma izveidos dalījumu tabulu nākamajiem desmit skaitļiem!")
a=eval(input("Lietotāj, ievadiet skaitli!\n"))
b=type(a)
print("Jūs ievadījāt skaitli %s, kura datu tips ir %s\n"%(a,b))
digit=len(str(a))
atstarpe=' '*digit #lai tabulas iedaļa, kas rāda lietotāja izvēlētos skaitļus nobīdītu tabulu un neizraisītu jukas
#if len(str(a))==len(str(a+1)):
print("%s"%(atstarpe), end=' ')
print("%1     %2     %3     %4     %5     %6     %7     %8     %9     %10")
r=0
while r<=10:
    print("%d"%(a), end=' ')
    k=1 #kollonas kārtas skaitlis
    n=1 #pirmais dalītājs
    while k<=10: #kolonnu skaits
        print("%d     "%(a%n), end=' ')
        n=n+1 #skaitlis ar ko dal
        k=k+1
    r=r+1
    a=a+1
    print()
'''
else:
    print("%s"%(atstarpe+' '), end=' ')
    print("%1     %2     %3     %4     %5     %6     %7     %8     %9     %10")
    r=0
    while r<=10:
        print("%d"%(a), end=' ')
        k=1 #kollonas kārtas skaitlis
        n=1 #pirmais dalītājs
        while k<=10: #kolonnu skaits
            print("%d     "%(a%n), end=' ')
            n=n+1 #skaitlis ar ko dal
            k=k+1
        r=r+1
        a=a+1
        print()
'''
