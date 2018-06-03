L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=1e3;
f = [10e3];
omega = 2*pi*f;
Zl = L*omega*i;

r = [Zl+R0+R1];
I = r.\Us;

Uv = I.*Zl;
faze = angle(Uv);
amp = abs(Uv);


figure
hold on
plot ([-2.5, 2.5], [0,0]) %draw vertical line
plot ([0,0], [-2.5,2.5]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')

for k=1:1
   arrow( [ 0 0 ], [ real(Uv(k)) imag(Uv(k)) ] ) 
   str = num2str(k);
   text(real(Uv(k)-1),imag(Uv(k)+3*i), str)
   text(real(Uv(k)-2.2),imag(Uv(k)+3*i), 'U')
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
   str = num2str(k);
   text(real(I(k)-1),imag(I(k)+3*i), str)
   text(real(I(k)-2.2),imag(I(k)+3*i), 'U')
end
