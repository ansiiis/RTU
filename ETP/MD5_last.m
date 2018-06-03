L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=100; R = 8e3;
f = [8e3];
omega = 2*pi*f;
Zl = L*omega*i; Zc = 1/(C*omega*i);

r = [R0+R1+R        -R1-R
     -R1-R          R1+R+Zc];
u = [Us;0];
Ik = r\u;

I1 = Ik(1);
I2 = Ik(1) - Ik(2);
I3 = Ik(2);

UR0 = I1*R0;
UR  = I2*R;
UR1 = I2*R1;
Uc = I3*Zc;

Uv = [UR0 UR UR1 Uc 0.9 4.49 51e-3];
I = [I1 I2 I3];


figure
hold on
x=10;
plot ([-x, x], [0,0]) %draw vertical line
plot ([0,0], [-x,x]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')
Unam = {'UR0','UR','UR1','UCm','UR0e','URe','UR1e'};
color = ['b','b','b','b','r','r','r','r','r','r'];
n=0; m=0;
for k=1:4
   arrow( [ n m ], [ real(Uv(k))+n imag(Uv(k))+m ], 'color', color(k) ) 
   str = Unam(k);
   n=n+real(Uv(k));
   m=m+imag(Uv(k));
   text(real(Uv(k)+n),imag(Uv(k)+m), str)
end
n=0; m=0;
for k=5:7
   arrow( [ n m ], [ real(Uv(k))+n imag(Uv(k))+m ], 'color', color(k) ) 
   str = Unam(k);
   n=n+real(Uv(k));
   m=m+imag(Uv(k));
   text(real(Uv(k)+n),imag(Uv(k)+m), str)
end
%%
figure(2)
hold on
plot ([-0.001, 0.001], [0,0]) %draw vertical line
plot ([0,0], [-0.001,0.001]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Strāvu fazori')


for k=1:3
   arrow( [ 0 0 ], [ real(I(k)) imag(I(k)) ] ) 
   str = num2str(k);
   %text(real(I(k)-1),imag(I(k)+3*i), str)
   %text(real(I(k)-2.2),imag(I(k)+3*i), 'U')
end




