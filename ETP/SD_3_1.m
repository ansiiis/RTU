R1=0.5e3; R2=0.3e3; R3=0.2e3; L1=0.8e-3; L2=1e-3; C1=1.5e-9; C3=1.6e-9;
omega=10^5*2*pi;
Zl1=L1*i*omega; Zl2=L2*i*omega;
Zc1=1/(C1*i*omega); Zc3=1/(C3*i*omega);
 fa2 = -0.4*pi; fa3 = 0.5*pi;
 U2=12*exp(i*fa2); U3=11*exp(i*fa3);

Z = [Zc1+Zl1+R1+R2+Zl2 -R2-Zl2
    Zl2+R2+R3+Zc3 -R2-Zl2];
U = [-U2;U2+U3];

Ik = Z\U;

I1 = Ik(1);
I2 = Ik(1) - Ik(2);
I3 = Ik(2);

UR1 = R1*I1;
UL1 = Zl1*I1;
UC1 = Zc1*I1;
UR2 = R2*I2;
UL2 = Zl2*I2;
UR3 = R3*I3;
UC3 = Zc3*I3;

Uv = [UR1 UR2 UR3 UL1 UL2 UC1 UC3];
modulis = abs(Uv);
faze = angle(Uv);

Iv = [I1 I2 I3];
modulisi = abs(Iv);
gradii = radtodeg(angle(Iv));
figure
hold on
plot ([-30, 30], [0,0]) %draw vertical line
plot ([0,0], [-30, 30]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Spriegumu fazori')

for k=1:7
   arrow( [ 0 0 ], [ real(Uv(k)) imag(Uv(k)) ] ) 
   str = num2str(k);
   text(real(Uv(k)-1),imag(Uv(k)+3*i), str)
   text(real(Uv(k)-2.2),imag(Uv(k)+3*i), 'U')
end

