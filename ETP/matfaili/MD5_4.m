L=20e-3; C=2200e-12;
Us = 5;
R0 = 1e3;  R=0e3;
f = [100]*1e3;
omega = 2*pi*f;
Zc = 1./(C*omega*i);

r = [Zc+R0+R];
I = r\Us;

Uc = I*Zc;
UR0 = I*R0;
Ur=0;
faze = angle(Uc);
amp = abs(Uc);
