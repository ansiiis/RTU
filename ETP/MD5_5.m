L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=4e3;
f = [10]*1e3;
omega = 2*pi*f;
Zc = 1./(C*omega*i);

r = [Zc+R0+R1];
I = r\Us;

Uv = [I*Zc,I*R0,I*R1,4.95]
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
for k=1:3
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

figure(2)
hold on
plot ([-0.001, 0.001], [0,0]) %draw vertical line
plot ([0,0], [-0.001,0.001]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Strāvu fazori')

for k=1:1
   arrow( [ 0 0 ], [ real(I(k)) imag(I(k)) ] ) 
   %str = num2str(k);
   %text(real(I(k)-2.2),imag(I(k)+3*i), 'U')
end