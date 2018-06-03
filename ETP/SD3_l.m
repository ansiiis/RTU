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
I = [I1 I2 I3];

figure
x=5e-2;
hold on
plot ([-x, x], [0,0]) %draw vertical line
plot ([0,0], [-x, x]) %draw horizontal line
grid on
xlabel('Realā ass')
ylabel('Imaginārā ass')
title('Strāvu fazori')
str = {'I1','I2','I3'};
for k=1:3
   arrow( [ 0 0 ], [ real(I(k)) imag(I(k)) ] ) 
   
   text(real(I(k)),imag(I(k)), str(k))
end
