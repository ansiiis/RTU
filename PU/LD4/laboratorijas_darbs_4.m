Ua = [-0.5 0 0.5 1 1.5 2];
In = [3.53 2.11 1.06 0.33 0.01 0]*1e-3; % Un = -5V

In2 = [3.77 2.26 1.14 0.38 0.02 0]*1e-3; % Un = -10



n=-0.5:0.001:2;

Ins=spline(Ua,In,n);
Ins2=spline(Ua,In2,n);

plot(Ua,In,'o',n,Ins)

title('In = f(Uai) pie Uni=-5V')
h1 = ylabel('In, A');
h2 = xlabel('Ua,V');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')

%%

Un = [0 -2 -4 -6 -8 -10 -12];

In = [0 1.92 2.1 2.18 2.23 2.27 2.3]*-1e-3; % Ua=0V

In2 =[0 0.97 1.05 1.09 1.2 1.15 1.17]*-1e-3; % Ua=0.5V

n=0:-0.01:-12;

Ins = spline(Un,In,n);

Ins2 = spline(Un,In2,n);

plot(Un,In,'o',n,Ins)

title('In = f(Uni) pie Uai=0V')
h1 = ylabel('In, A');
h2 = xlabel('Un,V');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
