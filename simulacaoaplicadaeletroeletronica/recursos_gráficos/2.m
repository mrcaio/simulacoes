clear ;
% Trabalhando com graficos
w = 100 ;
f = w/(2*pi) ;
T = 1/f ;
fc = (15*pi)/180 ;
fb = (5*pi)/180 ; 
dt = T/100 ;
t = 0 : dt : 3*T ;
y = 10*sin(w*t)+2*cos(3*w*t+fc)+1.2*cos(5*w*t+fb) ;
plot(t,y) ;