#!/usr/bin/python2
# -*- coding: utf-8 -*-

#http://www.cplusplus.com/reference/cstdio/printf/?kw=printf

#1. formāti, interpretators 

# 	%d 	skaitlis
# 	%x 	hex
# 	%o 	oktals
# 	%c 	simbols
# 	%5.3f 	real (pieci cipari kopa, 3 aiz komata (ja var)

mainigais=65
print type(mainigais)
print "mainiga vertiba ir %d"%(mainigais) 
print "mainiga vertiba hex skaitlis ir %x"%(mainigais) 
print "mainiga vertiba oktals sk ir %o"%(mainigais) 
print "mainiga vertiba simbols ir %c"%(mainigais) 

mainigais=6.6
print type(mainigais)
print "mainiga vertiba ir %d"%(mainigais) 
print "mainiga vertiba hex skaitlis ir %x"%(mainigais) 
print "mainiga vertiba oktals sk ir %o"%(mainigais) 
print "mainiga vertiba reals sk ir %7.3f"%(mainigais)
#print "mainiga vertiba simbols ir %c"%(mainigais) 

mainigais=':' #simbolu, ord interpretēs
print type(mainigais)
print "mainiga vertiba ir %d"%(ord(mainigais)) 
print "mainiga vertiba hex skaitlis ir %x"%(ord(mainigais)) 
print "mainiga vertiba oktals sk ir %o"%(ord(mainigais)) 
print "mainiga vertiba simbols ir %c"%(ord(mainigais)) 

