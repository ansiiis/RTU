vg =[690.7 671.6 623.6 612.3 607.3 579  567.6 546.1 496.2 491.6 435.8 434.7 433.9 407.8 404.7]*1e-9;
n=[3082 3036 2848 2802 2780  2634 2580 2452  2072 2036 1370 1348 1334 884 822];

bvg=[571 512.1]*1e-9;
bn=[2646 2148];

k=690.7e-9:-0.001e-9:404.7e-9;
ns=spline(vg,n,k);


plot(vg,n,'ko',k,ns,'k-',bvg,bn,'kx')
hold on
plot( xlim, [2828 2828],'r' )
redx=interp1(ns,k,2828)
plot( [redx redx],ylim,'r'  )

plot( xlim, [2706 2706],'y' )
yelx=interp1(ns,k,2706)
plot( [yelx yelx],ylim,'y'  )


plot( xlim, [2598 2598],'g' )
greenx=interp1(ns,k,2598)
plot( [greenx greenx],ylim,'g'  )


plot( xlim, [1648 1648],'b' )
blux=interp1(ns,k,1648)
plot( [blux blux],ylim,'b'  )


plot( xlim, [1364 1364],'m' )
magx=interp1(ns,k,1364)
plot( [magx magx],ylim,'m'  )

title('Spektrālās analīzes līnijas')
xlabel('Vilna garums, nm')
ylabel('n, grados')



