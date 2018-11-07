%% 1.tabula silicijs caurlaide
Ud=[0.726 0.736 0.746 0.754 0.762 0.767 0.775];
Im=[19.94 24.97 31.41 38.4 46.63 54.06 66.2]*1e-3;

n=0.726:0.001:0.775;
Ims=spline(Ud,Im,n);

plot(Ud,Im,'o',n,Ims)

h1 = xlabel('Spriegums$,V$');
h2 = ylabel('Strava$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
title('Silīcija diodes voltampēra raksturlīkne CAURLAIDES virzienā')

sigma7=( Ud(7)-Ud(6) ) / (Im(7) - Im(6) )

sigma4=( Ud(4)-Ud(3) ) / (Im(4) - Im(3) )

sigma1=( Ud(2)-Ud(1) ) / (Im(2) - Im(1) )



%% 2.tabula silicijs sprostvirziens
Ud=[0 6 12]*(-1);
Ispr=[0 0.6 1.1]*-1e-6;

n=0:-0.001:-12;

x1=polyfit(Ud,Ispr,1);
y1=polyval(x1,n);

plot(Ud,Ispr,'o',n,y1)


%xL = xlim;
%yL = ylim;

%line([0 0], yL);  %x-axis
%line(xL, [0 0]);  %y-axis


h1 = xlabel('Spriegums$,V$');
h2 = ylabel('Strava$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
title('Silīcija diodes voltampēra raksturlīkne SPROSTVIRZIENA zarā')


%% 3.tabula stabilatrons

Ust=[0.346 0.526 0.658 0.706 0.714 0.726]*-1;
Ist=[0.0012 0.0501 3.29 13.37 18.1 28.06]*-1e-3;

n=-0.346:-0.001:-0.726;
Ists=spline(Ust,Ist,n);

plot(Ust,Ist,'o',n,Ists);

%xlim([-0.726 0])

h1 = xlabel('Spriegums$,V$');
h2 = ylabel('Strava$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

title('Stabilitrona voltampēra raksturlīkne SPROSTVIRZIENA zarā')

%% 5.tabula Uie Ust

Ust=[0.164 0.567 0.669 0.708 0.722 0.740];
Uie=[0.2 0.7 1.47 3.28 5 9.37];

n=0.164:0.001:0.74;
Uies=spline(Ust,Uie,n);
Uies=Uies(504:end);
n=n(504:end);

Ust1=[0.164 0.567 0.669];
Uie1=[0.2 0.7 1.47];

m=0.164:0.001:0.669;
y1=spline(Ust1,Uie1,m)
y1=y1(404:end);
m=m(404:end);

f=0.164:0.001:0.567;

Ust2=[0.164 0.567];
Uie2=[0.2 0.7];
x1=polyfit(Ust2,Uie2,1);
y2=polyval(x1,f);


plot(Ust,Uie,'o',n,Uies,'-r',m,y1,f,y2,'r')

h1 = xlabel('Spriegums Ust$,V$');
h2 = ylabel('Spriegums Uie$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

title('Stabilitrona Uie - Ust voltampēra raksturlīkne')

ylim([0 10])
%% 4.tabula I


Ust=[0.164 0.219 0.275 0.639 0.692 0.719];
I=[0.2 0.26 0.33 2.18 8.87 20.45]*1e-3;

n=0.164:0.001:0.719;
Is=spline(Ust,I,n);

Is=Is(476:end)
n=n(476:end)

Ust1=[0.164 0.219 0.275 0.639 ];
I1=[0.2 0.26 0.33 2.18]*1e-3;

m=0.164:0.001:0.639;
y1=spline(Ust1,I1,m);

plot(Ust,I,'o',n,Is,m,y1,'r')

h1 = xlabel('Spriegums$,V$');
h2 = ylabel('Strava$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

title('Stabilitrona I = (I st + I sl ) = f(U st ) voltampēra raksturlīkne')
ylim([0 0.025])
