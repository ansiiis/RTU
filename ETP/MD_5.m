L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; 
R1= [0 1 2 4 10]*1e3;
f = [10e3];
omega = 2*pi*f;
Zl = L*omega*i;

r = [Zl+R0+R1];
u = Us;
I = r.\Us;
Zin = Us./I;
faze = angle(Zin);
R1n = 0:1:10e3;
rn = [Zl+R0+R1n];
In = rn.\Us;
Zinn = Us./In;
fazen = angle(Zinn);

plot(R1,faze,'o',R1n,fazen)
title('fazes atkarība no magazīnas pretestības')
h1 = xlabel('$Pretestiba, \Omega$')
set(h1,'Interpreter','latex')
ylabel('faze, rad')