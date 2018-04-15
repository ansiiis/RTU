#!/usr/bin/python
#-*- coding: utf-8 -*-

# Atvērsim abus failus.
d=open('data.bin','rb')
m=open('meta.bin','rb')
d.seek(0)
m.seek(0)

# Veicam failu nolasi.
while 1:
    a=d.read(1)
    if not a:
        break
    print hex(ord(a)),
    print chr(ord(a)),
print
while 1:
    b=m.read(1)
    if not b:
        break
    print hex(ord(b)),
    print chr(ord(b)),

d.close()
m.close()
