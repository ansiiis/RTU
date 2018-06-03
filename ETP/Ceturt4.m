Rl = 5; Rc = 2e3; L1=0.1e-3; C=10e-12;
Us = 10*exp(0); Zl1 = j*L1; Zc = 1/(C*j);

r = [Rl+L1+Rc -Rc
    -Rc         Rc+Zc];
u = [Us;0];

Ik = r\u;