syms Zl1 R1 Us R2 Zc1 R2 R3 Zc2 Is q

r = [Zl1+R1+R2      0       -R2
             q      Zc1        0
             -q       0      R2+R3+Zc2];
         
u = [-Us;0;-Is];

Ik = r\u