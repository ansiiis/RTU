L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=0e3;
f = [10e3];
omega = 2*pi*f;
Zl = L*omega*i;

r = [Zl+R0+R1];
I = r.\Us;
Uv = [I.*Zl,I.*R0];

faze = angle(Uv);
amp = abs(Uv);

x=8;
figure
hold on
plot ([-x, x], [0,0]) %draw vertical line
plot ([0,0], [-x,x]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')
color = ['b', 'b','r'];
Unam = {'ULm','UR01'};
n=0; m=0;
for k=1:length(Uv)
   arrow( [ n m ], [ real(Uv(k))+n imag(Uv(k))+m ], 'color', color(k) ) 
   str = Unam(k);
   text(real(Uv(k))+n,imag(Uv(k))+m, str)
   n=real(Uv(k));
   m=imag(Uv(k));
end
arrow( [ 0 0 ], [ sqrt(8) sqrt(8) ], 'color', color(3) ) 
arrow( [ 0 0 ], [ 5 0 ], 'color', color(3) ) 
text(4.5,-1,'Us')
text(3,3,'ULe')
y=5e-3;

figure(2)
hold on
plot ([-y, y], [0,0]) %draw vertical line
plot ([0,0], [-y,y]) %draw horizontal line

grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Strāvu fazori')

color1 = ['b', 'r'];
Inam={'Im', 'Ie'};
for k=1:length(I)
   arrow( [ 0 0 ], [ real(I(k)) imag(I(k)) ], 'color', color1(1) ) 
   str = Inam(k);
    text(real(I(k)),imag(I(k)), str)
end
