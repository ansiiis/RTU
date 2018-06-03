L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=0e3;
f = [5 10 20 40 80 100]*1e3;
omega = 2*pi*f;
Zc = 1./(C*omega*i);

r = [Zc+R0+R1];
u = Us;
I = r.\Us;

Uz = I.*Zc;
faze = angle(Uz);
amp = abs(Uz);

fn = 5e3:1:100e3;
 Uzn = spline(f,Uz,fn);
fazen = angle(Uzn);
ampn = abs(Uzn);

omegan = 2*pi*fn;
semilogx(f,amp.*cos(omega + faze),'o',fn,ampn.*cos(omegan + fazen))
title('Kondensatora sprieguma - frekvences raksturlīkne pie R=0')
xlabel('Frekvence, Hz')
ylabel('Spriegums V')