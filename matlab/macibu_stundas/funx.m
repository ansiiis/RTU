function fx = funx(UR)
global E R i0 a
%i0=1; a=1; E=1; R=1;
fx = i0*(exp(a*(E-UR))-1)-UR/R;

% UR-?
% ar minējuma metodi vnk liet iekšā skaitļus