L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=0e3;
f = [50 100 200 500 1e3 2e3 5e3 10e3];
omega = 2*pi*f;
Zl = L*omega*i;

r = [Zl+R0+R1];
u = Us;
I = r.\Us;

Uz = I.*Zl;
faze = angle(Uz);
amp = abs(Uz);

fn = 50:1:10e3;
 Uzn = spline(f,Uz,fn);
fazen = angle(Uzn);
ampn = abs(Uzn);

omegan = 2*pi*fn;
semilogx(f,amp.*cos(omega + faze),'o',fn,ampn.*cos(omegan + fazen))
title('Spoles sprieguma - frekvences raksturlīkne pie R=0')
xlabel('Frekvence, Hz')
ylabel('Spriegums V')