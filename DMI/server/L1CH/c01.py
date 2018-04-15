#!/usr/bin/python
'''
Fails: c01.py
Autors: Ansis Skadins
Datums: 20.12.17
Tiek izveidots tuksh fails c01.txt
Failu aizpilda ar tekstu. Tekstu modificee. Failu aizver
#!/usr/bin
'''
fn='c01.txt'				#define faila nosaukumu
f=open(fn,"w")				#atver failu rakstiit un lasit
print f.tell()				#pateikt atrashanas vietu faila
f.write("Python ir asakainais\n")	#faila ieraksta simbolu wirkni
f.seek(7)				#rakstamgalvu novietu 7.pozicija
f.write("- p")
f.close()				#failu aizver ciet!
print "darbs ar failu pabeigs"
