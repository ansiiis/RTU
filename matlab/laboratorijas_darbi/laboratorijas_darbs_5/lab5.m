function lab5
global E R i0 a
R=1;i0=8e-4;a=44.444;
t = 0:0.01:7.5;
Et = lab_darb_3;
Urt = [];
for E = Et
    Ur = newmet5;
    Urt=[Urt,Ur];
end
plot(t,Et,t,Urt)


function x0 = newmet5(x0,epsilon)
if nargin == 0
    x0=0;
    epsilon = 1e-3;
end
delta = funx(x0)/fund(x0);
while abs(delta) > epsilon
    delta = funx(x0)/fund(x0);
    x0 = x0-delta;
end    


function fx = fund(UR)
%funx atvasinajums
global E R i0 a
%a=1; i0=1; E=1; R=1;
fx = - 1/R - a*i0*exp(a*(E - UR));

function fx = funx(UR)
global E R i0 a
%i0=1; a=1; E=1; R=1;
fx = i0*(exp(a*(E-UR))-1)-UR/R;


