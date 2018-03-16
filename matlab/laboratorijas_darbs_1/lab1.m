%% 1. Laboratorijas darbs
load x_y.mat

% Ielādējam attēlus
A = imread('a.png');
B = imread('b.png');

% Attēlojam attēlus 
%figure(1),image(A)
%figure(2),image(B)
%set(gca,'YDir','normal');
%[x,y] = ginput(20)

C = polyfit(x,y,12);
M = 0:0.01:270;
N = polyval(C,M);
plot(x,y,'o',M,N)
xlabel('Wavelenght nm')
ylabel('Ŗelative Radiant Intensity (%)')


