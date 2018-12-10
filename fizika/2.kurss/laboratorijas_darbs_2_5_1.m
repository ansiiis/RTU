% Konstantes
mi0=1.2566e-6;  % Magnētiskā konstante Mī [H/m]

n=3;    % Vijumu skaits

R=0.18; % Riņķveida vada rādiuss [m]

% Mērījumi
fi1=[26 48 60 66 72]; fi2=[26 40 52 60 62]; % Nobīdes leņķis [grādi]

I=1:5;  % Strāvas stiprums [A]

% Aprēķini
fi=(fi1+fi2)/2;

B0 = (mi0*n*I)./(2*R*tan(fi));

%sprintf('%0.3e      ',B0)

dI = 0.025/3*1.96;

dB0I = (mi0*n)./(2*R*tan(fi));

%sprintf('%0.3e      ',dB0I)

dR = 0.005/3*1.996;

dB0R = (mi0*n*I)./(2*R^2*tan(fi));

%sprintf('%0.3e      ',dB0R)

dfi = deg2rad(1)/3*1.96;

dB0fi = (mi0*3*I)./(2*R*tan(fi).^2.*cos(fi).^2);

%sprintf('%0.3e      ',dB0fi)

dB01 = sqrt( (dB0I * dI).^2 + (dB0R * dR).^2 + (dB0fi * dfi).^2 );

%sprintf('%0.3e   ',dB01)

relat = dB01./B0*100;

%sprintf('%0.3e  ',relat)

vid = mean(B0);

SB0 = ( sqrt( (B0(1)-vid)^2 + (B0(2)-vid)^2 + (B0(3)-vid)^2 + (B0(4)-vid)^2 + (B0(5)-vid)^2) ) / 20;

relatfin = SB0*2.78/vid*100


