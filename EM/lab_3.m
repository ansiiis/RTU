%% Transformators are ferīta serdi

% Rsl izslēgts

U1 = [0.1 0.27 0.44 0.61 0.79 0.96 1.13 1.35];
U2 = [0.16 0.43 0.68 0.94 1.22 1.45 1.70 2];

% Rsl ieslēgts

U1a = [0.1 0.24 0.38 0.52 0.66 0.8 0.94 1.2];
U2a = [0.05 0.13 0.21 0.27 0.35 0.43 0.5 0.63];

%% Transformators ar monolīta tērauda serdi

% Rsl izslēgts

U1b = [0.1 0.18 0.26 0.34 0.42 0.5 0.58 0.7];
U2b = [0.03 0.06 0.09 0.12 0.16 0.2 0.24 0.31];

% Rsl ieslēgts

U1c = U1a;
U2c = [0.016 0.03 0.045 0.06 0.08 0.1 0.12 0.14];

subplot(2,1,1);
plot(U1,U2,'-',U1a,U2a,U1b,U1b,'--',U1c,U2c,'--')
title('Primārā - Sekundārā sprieguma raksturlīkne')
h1 = xlabel('$U1, V$')
set(h1,'Interpreter', 'latex')
h2 = ylabel('$U2, V$')
set(h2,'Interpreter', 'latex')
legend('ferīts, Rsl off','ferīts, Rsl on','monolīta tērauds, Rsl off', 'monolīta tērauds, Rsl on')

%% Transformators are ferīta serdi atkarībā no frekvences pie U1 = 0.25V

f = [50 75 100 150 200 300 400];
fa = [50 75 100 150 200 300 400 500];
U2d = [0.34 0.38 0.39 0.4 0.407 0.42 0.406];
U2da = [0.34 0.38 0.39 0.4 0.407 0.42 0.42 0.42];
m = 0:0.1:500;
U2ds = spline(fa,U2da,m);
subplot(2,1,2);
plot(f,U2d,'o',m,U2ds,m,zeros(length(m))+0.42,'--')
title('Frekvences - Sprieguma raksturlīkne')
h3 = xlabel('$f, Hz$')
set(h3, 'Interpreter', 'latex')
h4 = ylabel('$U2, V$')
set(h4, 'Interpreter', 'latex')
xlim([0 400])



