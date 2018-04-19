function fx = fund(UR)
%funx atvasinājums
global E R i0 a
%i0=1; a=1; E=1; R=1;
fx = - 1/R - a*i0*exp(a*(E - UR));
