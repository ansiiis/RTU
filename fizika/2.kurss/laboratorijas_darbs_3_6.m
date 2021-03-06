%% Fotoelementa voltamera raksturlikne

% R=0.03m
U1=[0 5 10 15 20 25 30 35 40 45];   % Spriegums [V]
I1=[4 32 54 78 100 120 140 168 188 200]*1e-6;   % Strāvas stiprums [A] 
figure(1)
m=0:0.01:45;
I1s=spline(U1,I1,m);


% R=0.1m

U2=[0 8 16 24 32 40 48 56 64 72];
I2=[4 30 48 60 70 72 74 76 78 80]*1e-6;
n=0:0.01:72;
I2s=spline(U2,I2,n);




% R=??m

U3=[0 4 8 10 12 14 16 18 20 24 28];
I3=[4 12 20 21 22 23 24 26 28 30 30]*1e-6;
k=0:0.01:28;
I3s=spline(U3,I3,k);

plot(U1,I1,'xk',m,I1s,'-k',U2,I2,'or',n,I2s,'-r',U3,I3,'*y',k,I3s,'-y')
h1 = xlabel('Spriegums$,V$');
h2 = ylabel('Strava$,A$');
 
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
 
title('Voltampēra raksturlīkne pie 3 attālumiem')
h = legend(['$r=0.03,m$'],['$r=0.03,m$ aproksimacija'],['$r=0.1,m$'],['$r=0.1,m$ aproksimacija'],['$r=0.2m$'],['$r=0.2m$ aproksimacija']);
set(h,'Interpreter','latex')
ylim([0 2.1e-4])

 
 %% Raksturlikne pie dažādiem spriegumiem
 
 U1=30; U2=40; U3=50;
 
 r=[10 14 18 22 26 30 34 38]*1e-2;
 r1=[10 14 18 22 26 30 34 38]*1e-2;
 rn=0.1:0.01:0.38;
 
 I1=[68 48 36 25 20 18 16 14]*1e-6;
 I1s=spline(r,I1,rn);
 
 I2=[76 52 40 27 22 20 17 14]*1e-6;
 I2s=spline(r,I2,rn);
 
 I3=[80 54 42 28 24 21 18 14]*1e-6;
 I3s=spline(r,I3,rn);
 plot(r,I1,'xk',rn,I1s,'-k',r,I2,'or',rn,I2s,'-r',r,I3,'*y',rn,I3s,'-y')
 
 h1 = xlabel('Attalums$,m$');
 h2 = ylabel('Strava$,A$');
 
 set(h1,'Interpreter','latex')
 set(h2,'Interpreter','latex')
h = legend(['$U=30 V$'],['$U=30 V$ aproksimacija'],['$U=40 V$'],['$U=40 V$ aproksimacija'],['$U=50 V$'],['$U=50 V$ aproksimacija'])
set(h,'Interpreter','latex')

 
 title('Strāvas - Attāluma raksturlīkne')
 
%%
I1=[68 48 36 25 20 18 16 14]*1e-6;
I2=[76 52 40 27 22 20 16 14]*1e-6;
I3=[80 54 42 28 24 21 18 14]*1e-6;
r=[10 14 18 22 26 30 34 38]*1e-2;

fi = 1./r.^2;

U=100:-0.01:0;

x1 = polyfit(fi,I1,1);
y1 = polyval(x1,U);
x2 = polyfit(fi,I2,1);
y2 = polyval(x2,U);
x3 = polyfit(fi,I3,1);
y3 = polyval(x3,U);

plot(fi,I1,'xk',U,y1,'-k',fi,I2,'or',U,y2,'-r',fi,I3,'*y',U,y3,'-y')
h1 = xlabel('Gaismas plusma$,1/m^2$');
h2 = ylabel('Strava$,A$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
h = legend(['$U=30 V$'],['$U=30 V$ aproksimacija'],['$U=40 V$'],['$U=40 V$ aproksimacija'],['$U=50 V$'],['$U=50 V$ aproksimacija']);
set(h,'Interpreter','latex')
title('Apgaismojuma raksturlīkne')
%%
I1=[68 48 36 25 20 18 16 14]*1e-6;
I2=[76 52 40 27 22 20 16 14]*1e-6;
I3=[80 54 42 28 24 21 18 14]*1e-6;
r=[10 14 18 22 26 30 34 38]*1e-2;

fi = 1./r.^2;

ks1=I1./fi;
ks2=I2./fi;
ks3=I3./fi;

