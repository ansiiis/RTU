Us1 = 9;
R1=20;R2=10;R3=30;


R = [R1+R2      -R2         0
    -R2+R1/2     R2         0
    -R1/2        0          R3];
U = [Us1;0;0];

I = R\U

