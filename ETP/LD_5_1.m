L=20e-3; C=2200e-12;
Us = 5;
R0 = 1e3;  R=1e3;
fm = [10e3];
omega = 2*pi*fm;
Zl = L*omega*i;

r = [Zl+R0+R];
I = r\Us;

Ul = I*Zl;
Ur = I*R;
Ur0 = I*R0;
faze = angle(Ul);
amp = abs(Ul);

%%
Us=5;
R0=1e3;  R=4e3;
Ul=4.2; Us=5;
L=20e-3;
f = [10]*1e3;
omega = 2*pi*f;
Zl = j*omega*L;

Ief = (Us-Ul)/R0

