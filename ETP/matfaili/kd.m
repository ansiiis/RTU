R1=20; R2=10; R3=5; L1 = 4e-3; C1 = 10e-6; C2 = 20e-6; omega=10e4;
Us1 = 200*exp(pi/2);
Is = 500e-3*exp(0);
Zl = omega*i*L1; Zc1 = 1/(i*omega*C1); Zc2 = 1/(i*omega*C2);



R = [Zc1+Zc2+R2+R3 0; -5 Zc1];
U = [-Us1;-5*Is];

I = R\U

%%
R1=15; R2=10; C1=200e-6; C2 = 100e-6; C3=100e-6; omega=10e3;
Us1 = 20*exp(pi/4);
Zc3 = 1/(i*omega*C3); Zc2 = 1/(i*omega*C2); Zc1=1/(i*omega*C1);

R=[R1+Zc3+Zc1+R2 -R2; -R2 R2+Zc2];
U = [-Us1;0];
I = R\U