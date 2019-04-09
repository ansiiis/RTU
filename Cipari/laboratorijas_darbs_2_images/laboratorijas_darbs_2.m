n = 0:1:15;
Uiz = [37.5e-3 180e-3 315e-3 0.43 0.59 0.74 0.88 1 1.12 1.28 1.41 1.56 1.7 1.85 2 2.1];

ns = 0:0.1:15;
Uizs = spline(n,Uiz,ns);
plot(n,Uiz,'o',ns,Uizs);
title('U_{iz}=f(n)')
h1 = xlabel('$n$');
h2 = ylabel('$U_{iz}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')


kvantsol = (2.1-37.5e-3)/15;

%%
Uie = [0.18 0.315 0.45 0.59 0.73 0.86 1 1.14 1.28 1.4 1.55 1.7 1.85 2];
n = 2:1:15;
ns = 2:0.1:15;
Uies = spline(n,Uie,ns);

dzestU = [0 0.114]
dzestn = [0 1];

plot(Uie,n,'o',Uies,ns,dzestU,dzestn,'kx');

title('n = f(U_{ie})')
h1 = xlabel('$U_{ie}, V$');
h2 = ylabel('$n$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')




