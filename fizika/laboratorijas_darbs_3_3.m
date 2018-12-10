gradi=[349 355 356 357 360 362 363 344 343 343 339 337 336];
minutes=[18 0 12 24 0 36 24 36 36 0 36 42 36]/60;

gradi=gradi+minutes;

nulle=gradi(1);

fi=gradi-nulle;

k=[0 1 1 1 2 2 2 -1 -1 -1 -2 -2 -2];
vgarums=[0 435 546 579 435 546 579 435 546 579 435 546 579]*1e-9;

d=vgarums.*k./sind(fi);
vid=mean(d(2:13));

dd=sqrt( ( (-k.*degtorad(0.032667).*vgarums.*cosd(fi))./(sind(fi).^2) ).^2 );

kvad=sqrt(( (d(2) - vid )^2 + (d(3) - vid )^2 + (d(4) - vid )^2 + (d(5) - vid )^2 + (d(6) - vid )^2 + (d(7) - vid )^2 + (d(8) - vid )^2 + (d(9) - vid )^2 + (d(10) - vid )^2 + (d(11) - vid )^2+ (d(12) - vid )^2 + (d(13) - vid )^2)/132);

D=1/(5e-6 * cosd(6.9));

%%
d=4.9303e-6; vg=546e-9; k=1; dn=5e-6; fi=6.9;

D = k/(d*cosd(6.9));

dd=-1/(d^2*cosd(6.9));

df=sind(fi)/(d*cosd(fi)^2);

DD=sqrt( (df*5.7015e-4)^2 + (dd*1.3066e-7)^2 )