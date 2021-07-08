clear ;
% Trabalhando com graficos
w = 3 ;
f = w/(2*pi) ;
T = 1/f ;
t = 0 : T/100 : 5*T ;
y1 = 0.88*exp(-0.4*t) ;
fi = -7.5*pi/180 ;
y2 = cos(w*t + fi) ;
y = (y1 .* y2) + 6.6 ; 
plot (t, y) ;
