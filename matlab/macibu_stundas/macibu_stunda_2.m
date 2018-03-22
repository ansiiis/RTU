%% Mērījumu datu apstrāde
% Polinomā aproksimācija - ja par 2 punktiem lielāka par polinoma kārtu,
% skatīsim lekcijā.
% 1.lab.d
diary lab1_diary.m
%doti mērījumu dati, kurus noformēsim kā vektorus
Um = [-1 0.3 1.5 2.5 3.2]
Im = [1.1 2.2 2.1 3.2 4.7]
%Grafiks
plot(Um,Im,'o-')
%Iznāk lausta līnija, kas mums neder, tāpēc mēģināsim izveidot matemātisku
%2.kārtas polinoms
%y = C(1)*x.^2+C(2)*x+C(3)
%Polinoma koeficentus atradīs POLYFIT
%sintakse:
%C = polyfit(x,y,N)
%N-polinoma karta
%C = polyfit(Um,Im,2)
%Lai iegūtu labu līniju
%noformēšu vēl vienu x
U = -1:0.01:3.2
%%tad rēķināšu y ar sīkāku soli
%grafiku zīmēsim
%mērījumu dati ar "o"
%I=C(1)*U.^3+C(2)*U+C(3)
%pielaikotais polinoms ar līniju
%plot(Um,Im,'o',U,I)
%lai iegūtu labākus rezultātus paņemsim 3.kārtas polinomu
C = polyfit(Um,Im,3)
I= C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4)
plot(Um,Im,'o',U,I)

%% izmantosim PolYVAL funkciju
%Ja punktu skaits ir par vienu lielaks par polinoma pakāpi, tad ir absolūti
%precīzi INTERPOLACIJA
%polyfit = polynomial fitting rekina koeficentus
%polyval = polynomial values rekina vertibas
C = polyfit(Um,Im,10);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% Ja sakarība ir lineāra
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)

%% Vairākas mērijumu sēŗijas
% Pieņemsim, ka mainmām spriegumu, bet strāvu mainām 5 reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
      0.9 1.8 2.6 3.3 4.5;
      1.0 2.0 2.4 3.4 4.3;
      0.8 2.1 2.5 3.5 4.4;
      1.0 2.1 2.3 3.4 4.6];
% Kā matlab zīmēs matricas?
%figure,plot(Um,Im,'o-')
%pareizi butu transponet
%figure,plot(Um,Im','o-')
%secinam, ka matlab zime pa stabiņiem
%lai polyfit varētu aprēķināt vajag vidējo
Ivid=mean(Im)
C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
%uzzimesim
%ar aplīšiem apzīmeējam mēŗijumu datus
%ar melnām zvaigznēm vidējo
%ar līniju apzīmējam pielaikojot polinomo
plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')

%% Kā attēlot vidējo kvadrātisko nozīmi

Ivid_kv_nov = std(Im);
errorbar(Um,Ivid,Ivid_kv_nov)

%% Datu iegūšana no grafiski uzdotiem datiem
%Pieņemsim, ka mums ir grafika foto
%1.Ielasam JPG uz matlab
A = imread('image1.JPG');
B = imread('image2.JPG');
%2.Uzzimēsim
%figure(1),image(A);
%figure(2),image(B);
figure(2),image([0 14],[80 0],B);
set(gca,'YDir','normal');
[x,y] = ginput(8)
