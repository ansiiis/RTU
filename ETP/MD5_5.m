L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=0e3;
f = [5 10 20 40 80 100]*1e3;
omega = 2*pi*f;
Zc = 1./(C*omega*i);

r = [Zc+R0+R1];
u = Us;
I = r.\Us;

Uv = I.*Zc;
faze = angle(Uv);
amp = abs(Uv);

figure
hold on
plot ([-7, 7], [0,0]) %draw vertical line
plot ([0,0], [-7,7]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')

for k=1:1
   arrow( [ 0 0 ], [ real(Uv(k)) imag(Uv(k)) ] ) 
   str = num2str(k);
   %text(real(Uv(k)-1),imag(Uv(k)+3*i), str)
   %text(real(Uv(k)-2.2),imag(Uv(k)+3*i), 'U')
end

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