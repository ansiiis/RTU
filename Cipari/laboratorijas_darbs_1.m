%% 1.c grafiks f1

R = [5.1 7 9 11 13 15]*1e3;

t_ka = [1.5 1.6 1.9 2 2.9 4]*1e-6;
t_kr = [13 12 11.9 11 10 9]*1e-6;
ts = [16 15.8 15.5 14 12 10]*1e-6;

n = 5.1e3:0.1:15e3;
t_ka_spline = spline(R,t_ka,n);

plot(R,t_ka,'o',n,t_ka_spline)

title('t_{ka} = f_1(R)')
h1 = xlabel('$R, \Omega$');
h2 = ylabel('$t_{ka}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 1.c grafiks f2

R = [5.1 7 9 11 13 15]*1e3;

t_ka = [1.5 1.6 1.9 2 2.9 4]*1e-6;
t_kr = [13 12 11.9 11 10 9]*1e-6;
ts = [16 15.8 15.5 14 12 10]*1e-6;

n = 5.1e3:0.1:15e3;
t_kr_spline = spline(R,t_kr,n);

plot(R,t_kr,'o',n,t_kr_spline)

title('t_{kr} = f_2(R)')
h1 = xlabel('$R, \Omega$');
h2 = ylabel('$t_{kr}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 1.c grafiks f3

R = [5.1 7 9 11 13 15]*1e3;

t_ka = [1.5 1.6 1.9 2 2.9 4]*1e-6;
t_kr = [13 12 11.9 11 10 9]*1e-6;
t_s = [16 15.8 15.5 14 12 10]*1e-6;

n = 5.1e3:0.1:15e3;
t_s_spline = spline(R,t_s,n);

plot(R,t_s,'o',n,t_s_spline)

title('t_s = f_3(R)')
h1 = xlabel('$R, \Omega$');
h2 = ylabel('$t_{s}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 2. grafiks f4

R_k = [5.1 9 11 13 15]*1e3;

t_ka = [4 3.1 3 2.9 2.7]*1e-6;
t_kr = [13 14 15 16 18]*1e-6;
t_s = [9.5 12 13 13.5 14]*1e-6;

n = 5.1e3:0.1:15e3;
t_ka_spline = spline(R_k,t_ka,n);

plot(R_k,t_ka,'o',n,t_ka_spline);

title('t_{ka} = f_4(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$t_{ka}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 2. grafiks f5

R_k = [5.1 9 11 13 15]*1e3;

t_ka = [4 3.1 3 2.9 2.7]*1e-6;
t_kr = [13 14 15 16 18]*1e-6;
t_s = [9.5 12 13 13.5 14]*1e-6;

n = 5.1e3:0.1:15e3;
t_kr_spline = spline(R_k,t_kr,n);

plot(R_k,t_kr,'o',n,t_kr_spline);

title('t_{kr} = f_4(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$t_{kr}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 2. grafiks f6

R_k = [5.1 9 11 13 15]*1e3;

t_ka = [4 3.1 3 2.9 2.7]*1e-6;
t_kr = [13 14 15 16 18]*1e-6;
t_s = [9.5 12 13 13.5 14]*1e-6;

n = 5.1e3:0.1:15e3;
t_s_spline = spline(R_k,t_s,n);

plot(R_k,t_s,'o',n,t_s_spline);

title('t_{s} = f_4(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$t_{s}, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 3. grafiks f7

R_s = [2.6 6 10 12 14 16 18 20]*1e3;

U_a2 = [8 13 16 17 17.1 18 19 19.2];

n = 2.6e3:0.1:20e3;
U_a2_spline = spline(R_s,U_a2,n);

plot(R_s,U_a2,'o',n,U_a2_spline);

title('U_{a2} = f_7(R_s)')
h1 = xlabel('$R_s, \Omega$');
h2 = ylabel('$U_{a2}, V$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 4. grafiks f1 f2 f8 f9

R = [5.1 7 9 11 13 15]*1e3;

t_ka_f1 = [1.5 1.6 1.9 2 2.9 4]*1e-6;
t_ka_f8 = ones(1,6)*0.4*1e-6;

t_kr_f2 = [13 12 11.9 11 10 9]*1e-6;
t_kr_f9 = [11 10 9 4 3 2.8]*1e-6;

n = 5.1e3:0.1:15e3;
t_ka_f1_spline = spline(R,t_ka_f1,n);
t_kr_f2_spline = spline(R,t_kr_f2,n);
t_kr_f9_spline = spline(R,t_kr_f9,n);

plot(R,t_ka_f1,'o',n,t_ka_f1_spline,R,t_ka_f8,R,t_kr_f2,'o',n,t_kr_f2_spline,R,t_kr_f9,'o',n,t_kr_f9_spline);
legend('t_{ka} f_1(R)','t_{ka} f_1(R) spline','t_{ka} f_8(R)','t_{kr} f_2(R)','t_{kr} f_2(R) spline','t_{kr} f_9(R)','t_{kr} f_9(R) spline')
title('t_{ka}, t_{kr} funkcijas no R')
h1 = xlabel('$R, \Omega$');
h2 = ylabel('$t, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%% 5. grafiks f3 f10

R_k = [5.1 7 9 11 13 15]*1e3;

t_s_f10 = [12 11.9 11 10.9 10 8]*1e-6;
t_s_f3 = [16 15.8 15.5 14 12 10]*1e-6;

n = 5.1e3:0.1:15e3;

t_s_f10_spline = spline(R_k,t_s_f10,n);
t_s_f3_spline = spline(R_k,t_s_f3,n);

plot(R_k,t_s_f10,'o',n,t_s_f10_spline,R_k,t_s_f3,'o',n,t_s_f3_spline);
legend('t_s f_{10}(R_k)', 't_s f_{10}(R_k) spline','t_s f_{3}(R_k)','t_s f_{3}(R_k) spline')

title('t_{s} = f(R_k)')
h1 = xlabel('$R_k, \Omega$');
h2 = ylabel('$t_s, s$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')










