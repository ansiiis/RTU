Rk = [5 10 15 20 25 30 35];
U_a3 = [21 16 12 10 8 7 6];

Rkn = 5:0.1:35;
U_a3s = spline(Rk,U_a3,Rkn);

plot(Rk,U_a3,'o',Rkn,U_a3s)

title('fig1 U_{a3}=f(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$U_{a3}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%

Us = [8.5 5 3.5 2.9 2.1 1.9 1.5];
Ub = [2.5 2 1.9 1.8 1.2 1.1 1];

P = (Us - Ub)./Us * 100
Rk = [5 10 15 20 25 30 35];

n = 70.5882:0.1:33.333;
Ps = spline(Rk,P,n)

plot(Rk,P,'o',n,Ps)

title('fig2 P[%]=f(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$P$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%

C = [6800e-12 0.01e-6 0.03e-6 0.05e-6 0.1e-6];

U = [14 15 5 4.5 3];

plot(C,U,'o')

title('fig3 U_{a4}=f(C)')
h1 = xlabel('$C, F$');
h2 = ylabel('$U_{a4}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%

Ua3 = [1.5 2.5 3.5 5 8];
tp = [300 400 500 700 1000]
plot(tp,Ua3,'o')

title('U_{a4}=f(t_p)')
h1 = xlabel('$t_p, uS$');
h2 = ylabel('$U_{a4}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%

Uc = [19.9 20 20.5 21.5 22.5];
R1 = [9.1 10 11 15 18]*1e3;

plot(R1,Uc,'o')

title('U_{C}=f(R_1)')
h1 = xlabel('$R_1, \Omega$');
h2 = ylabel('$U_{C}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
%%

U4 = [11.5 11 10.5 7 4.5];
R1 = [9.1 10 11 15 19];

plot(R1,U4,'o')


title('U_{a4}=f(R_1)')
h1 = xlabel('$R_1, \Omega$');
h2 = ylabel('$U_{a4}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%
U7 = [21 11 8 5.5 5 4 3];
Rk = [5 10 15 20 25 30 35];

plot (Rk,U7,'o')

title('U_{a7}=f(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$U_{a7}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')





