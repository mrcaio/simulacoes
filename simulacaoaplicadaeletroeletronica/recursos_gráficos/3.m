clear ;
% Trabalhando com graficos
w = 100 ;
f = w/(2*pi) ;
T = 1/f ;
fc = (15*pi)/180 ;
fb = (5*pi)/180 ; 
dt = T/100 ;
t = 0 : dt : 3*T ;
y1 = 10*sin(w*t) ; 
y2 = 2*cos(3*w*t+fc) ; 
y3 = 1.2*cos(5*w*t+fb) ; 
y4 = 10*sin(w*t)+2*cos(3*w*t+fc)+1.2*cos(5*w*t+fb) ;
subplot (4,1,1)
plot(t,y1,'r') ;
subplot (4,1,2)
plot(t,y2,'b') ;
subplot (4,1,3)
plot(t,y3,'k');
subplot (4,1,4)
plot(t,y4,'g') ;
