

cat		#concatenate files and print on the standard output			##sakopo un izprintē failu saturu
cd		#change the working directory						##maina kurēju mapi/darbavietu
chmod nnn	#set permissions r=4, w=2, x=1 ## chmod 744 7=owner, 4=group, 4=other	##izmaina mapes/faila tiesības attiecībā uz īpašnieku, grupu, citu lietotāju
clear/ctrl+L	#clear the terminal screen						##attīra termināļa ekrānu
echo $0		#name of the running process - name of the shell or a script		##izprintē tekošo procesu, shell vai skripta nosaukumu
echo		#display a line of text							##izprintē tekstu
echo -e \a     	#alert (BEL)								##printējot rindu, izvada skaņas signālu
echo -e \\     	#backslash								##izprintē šķērsvītru
echo -e	\b     	#backspace								##tekoši rakstot, nospiež backspace
echo -e	\c     	#produce no further output						##printējot tekstu, noraju rindu pēc \c									
echo -e		#enable interpretation of backslash escapes				##printējot iedarbina šķērsvītras sintaksi
echo -e	\n     	#new line								##pēc \n printē jaunā rindā
echo -e	\r     	#carriage return							##printējot tekstu pirms \r neizvada
echo -e	\t     	#horizontal tab								##horizontāla tab ievade
echo -e	\v     	#vertical tab								##vertikālā tab ievade		
echo -n		#do not output the trailing newline					##izprintē rindu, neievada atstarpes līdz nākamajai rindai
echo $PATH	#display directories shell looks for executables in			##izvada mapes, kurās shell meklē izpildprogrammas 
git-add 	#Add file contents to the index						##indeksē esošās mapes failus
git-clone	#Clone a repository into a new directory				##clonē repozitāriju jaunā mapē (mūsu datorā)
git-commit -m  	#Use the given <msg> as the commit message				##aukšupielādējos izmaiņas repozitārijā ar komentāru
git-commit	#Record changes to the repository					##aukšupielādē izmaiņas repozitārijā
history 	#prints terminal history						##izvada termināļa vēsturi
lsb_release	#prints distro information						##izprintē distribūcijas informāciju 
ls -la		#use a long listing format + #do not ignore entries starting with .	##izprintē mapes saturu ar garo formatējumu, taču parāda slēptos failus/mapes
ls		#list directory contents						##izprintē mapes saturu
ls -l		#use a long listing format						##izprintē mapes saturu ar garo formatējumu
man		#manual - info about the command					##izprintē informāciju par doto komandu
mkdir		#make directories							##izveido mapi
nano		#summons nano editor							##izsauc nano teksta apstrādes programmu
PATH=$PATH:	#add a directory to the paths shell checks for executables		##shell takām pievieno noteiktu mapi 
pwd		#print name of current/working directory				##izprintē kurējo mapi
rmdir		#removes empty directories						##izdzēš tukšu mapi
rm -rf		#removes files/directories, subdirectories without prompt		##dzēš failus,mapes,apakšmapes un apspiež vaicājumus
uname		#print system information						##izprintē sistēmas informāciju
uname -r	#print the kernel release						##izprintē kerneļa versiju
whoami		#print effective userid							##izvad lietotāja ID
who		#show who is logged on							##parāda, kurš ir ielogojies sistēmā
