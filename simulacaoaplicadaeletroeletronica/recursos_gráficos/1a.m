clear ;
% Trabalhando com graficos
T = pi;
W = 2 ;
dt = T/100 ;
t = 0 : dt : 2*T ;
y = sin(W*t) ;
plot(t,y)