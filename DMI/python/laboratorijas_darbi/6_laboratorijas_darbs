#!/usr/bin/python
#-*- coding: utf-8 -*-

# Definējam savu funkciju.
def logical_xor(str1, str2):
    return bool(str1) ^ bool(str2)

# Atvērsim abus failus.
fdata=open('data.bin','rb')
mdata=open('meta.bin','rb')
fdata.seek(1)
mdata.seek(0)

# Sāksim dekodēt.
while 1:
    key=mdata.read(1) # OK
    mask=mdata.read(1) # OK
    if not key:
        break
    fdata.seek(ord(key)-1,1)
    code=fdata.read(1)
    if not code:
        break
    xor=ord(code) ^ ord(mask)
   # print hex(ord(key)),
   # print hex(ord(mask)),
   # print hex(ord(code)),
    print chr(xor),
fdata.close()
mdata.close()
