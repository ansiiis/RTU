%% Uke = 1V
Ib = [1 5 10 15 20 25 50 75 100 150]*1e-6;
Ube = [0.584 0.646 0.667 0.68 0.69 0.696 0.719 0.735 0.746 0.76];

n=1e-6:1e-9:150e-6;
Ubes=spline(Ib,Ube,n);

plot(Ib,Ube,'o',n,Ubes)

h1 = xlabel('Strava$,A$');
h2 = ylabel('Spriegums$,V$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
title('Tranzistora ieejas raksturlīkne pie Uke = 1V ')


%% Uke = 12V

%Ib = [1 5 10 15 20 25 50 75 100 150]*1e-6;
%Ube = [0.59 0.64 0.656 0.655 0.656 0.663 0.654 0.632 0.618 0.578];

Ib = [1 5 10 25 50 75 100 150]*1e-6;
Ube = [0.59 0.64 0.656 0.663 0.654 0.632 0.618 0.578];

Icut=[15 20]*1e-6;
Ucut=[0.655 0.656];

n=1e-6:1e-9:150e-6;
Ubes=spline(Ib,Ube,n);

plot(Ib,Ube,'o',n,Ubes,Icut,Ucut,'kx')

h1 = xlabel('Strava$,A$');
h2 = ylabel('Spriegums$,V$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
title('Tranzistora ieejas raksturlīkne pie Uke = 12V ')

%% Ib = 10 micro A

Uke = [0.35 1 2 3 4 5 6 8 10 12];
Ik = [2.62 2.68 2.74 2.78 2.81 2.85 2.9 2.97 3.05 3.17]*1e-3;

n=0.35:0.001:12;

x1=polyfit(Uke,Ik,1);
y1=polyval(x1,n);

plot(Uke,Ik,'o',n,y1)

h1 = ylabel('Strava$,A$');
h2 = xlabel('Spriegums$,V$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
h3= title('Tranzistora izejas raksturlīkne pie Ib = 10 microA ')

%% Ib = 50 micro A

Uke = [0.35 1 2 3 4 5 6 8 10 12];
Ik = [13.6 15.13 15.6 15.9 16.3 16.93 17.24 18.13 19.14 19.64]*1e-3;

n=0.35:0.001:12;
x1=polyfit(Uke,Ik,1);
y1=polyval(x1,n);
plot(Uke,Ik,'o',n,y1)

h1 = ylabel('Strava$,A$');
h2 = xlabel('Spriegums$,V$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
h3= title('Tranzistora izejas raksturlīkne pie Ib = 50 microA ')

%% Ib = 100 micro A

Uke = [0.35 1 2 3 4 5 6 8 10 12];
Ik= [22.15 29.1 30.5 31.8 32.95 34.2 35.4 37.6 40.38 42.7]*1e-3;

n=0.35:0.001:12;
x1=polyfit(Uke,Ik,1);
y1=polyval(x1,n);
plot(Uke,Ik,'o',n,y1)

h1 = ylabel('Strava$,A$');
h2 = xlabel('Spriegums$,V$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
h3= title('Tranzistora izejas raksturlīkne pie Ib = 100 microA ')

%% Ib, Ik

Ib = [1 5 10 15 20 25 50 75 100 150]*1e-6;
Ik = [0.06 1.23 2.85 4.56 6.32 8 16.88 25.6 33.92 49.7]*1e-3;

n=1e-6:1e-9:150e-6;
x1=polyfit(Ib,Ik,1);
y1=polyval(x1,n);
plot(Ib,Ik,'o',n,y1)

h1 = xlabel('Strava $I_b, \quad A$');
h2 = ylabel('Strava $I_k, \quad A$');

set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
h3= title('Ik = f(Ib) ')




