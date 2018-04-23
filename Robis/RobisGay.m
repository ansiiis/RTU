%% 1. Tabula
Um0 = [0.68 0.40];
n = [8 9];
Umnt =[0.04 0.11];
nT = [81 93]*1e-6;
T = [10.125 10.333]*1e-6;
f = [98 96.78]*1e3;

lambda = 1./n .* log(Um0./Umnt);
Q = pi./lambda;

%% 2. Tabula
% R=12k
f1rez=74e3;
f1 = [36 43 50 57 62 69 74 81 91 97 101 113 127]*1e3;
Urez = 0.5;
Uf1 = [0.076 0.107 0.134 0.180 0.230 0.35 0.5 0.48 0.44 0.4 0.35 0.24 0.18];
Uf1_Urez = Uf1./Urez;
n = 36e3:1e3:127e3;
xlim([-0.1 127e3])
Uf1s = spline(f1,Uf1,n);
Uf1_Urezs = spline(f1,Uf1_Urez,n);
plot(f1,Uf1,f1,Uf1_Urez,n,Uf1s,'o',n,Uf1_Urezs,'o')
h = xlabel('$f,Hz$')
set(h,'Interpreter','latex')
h1 = ylabel('$U,V$')
set(h1,'Interpreter','latex')
% R=22k
f2rez=83e3;
f2 = [44 50 55 61 66 78 83 91 98 103 108 115 128]*1e3;
Uf2 = [0.05 0.06 0.07 0.10 0.13 0.36 0.5 0.38 0.20 0.15 0.13 0.10 0.07];
Uf2_Urez = Uf2./Urez;
m = 44:1e3:128e3;
Uf2_Urezs = spline(f2,Uf2_Urez,m);
Uf2s = spline(f2,Uf2,m);
figure(2)
plot(f2,Uf2,f2,Uf2_Urez,m,Uf2s,'o',m,Uf2_Urezs,'o')
h3 = xlabel('$f,Hz$')
set(h3,'Interpreter','latex')
h4 = ylabel('$U,V$')
set(h4,'Interpreter','latex')
ylim([0 1]);



