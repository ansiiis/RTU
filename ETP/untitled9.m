L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=4e3;
f = [10]*1e3;
omega = 2*pi*f;
Zc = 1/(C*omega*i);

r = [Zc+R0+R1];
I = r\Us;

Uv = [I*Zc,I*R0,I*R1,4.95];

x=10;
figure
hold on
plot ([-x, x], [0,0]) %draw vertical line
plot ([0,0], [-x,x]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')
color = ['b', 'b','b','r'];
Unam = {'UCm','UR01','UR','UCe'};
n=0; m=0;
for k=1:3
   arrow( [ n m ], [ real(Uv(k))+n imag(Uv(k))+m ], 'color', color(k) ) 
   str = Unam(k);
   text(real(Uv(k))+n,imag(Uv(k))+m, str)
   n=n+real(Uv(k));
   m=m+imag(Uv(k));
end
arrow( [ 0 0 ], [ sqrt(12.05) -sqrt(12.05) ], 'color', color(4) ) 
arrow( [ 0 0 ], [ 5 0 ], 'color', color(4) ) 
text(4.5,1,'Us')
text(sqrt(12.05), -sqrt(12.05),'UCe')

figure
x=5e-4;
figure
hold on
grid on
plot ([-x, x], [0,0]) %draw vertical line
plot ([0,0], [-x,x]) %draw horizontal line
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Strāvas fazori')
arrow( [ 0 0 ], [ real(I) -imag(I) ], 'color', 'g' ) 
