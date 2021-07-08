clear ;
% Trabalhando com graficos
T = 2*pi ;
W = 4 ;
O = 15*pi/180 ;
dt = T/100 ;
t = 0 : dt : 2*T ;
y = cos(W*t+O) ;
plot(t,y)
