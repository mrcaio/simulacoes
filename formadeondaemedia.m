
% Lista 04
clear ; 
% Gerar a forma de onda 
T = 0.2
f = 1/T
w = 2*pi*f
A = 10
nT = 2*T
dt = T/100
t = 0 : dt : nT ;
n = length(t) 
for i = 1 : n
    y(i) = sin (w*t(i)) ;
    if ( y(i) < 0.0 )
        y(i) = -1*y(i) ;
end
end
stem (t,y, 'r') ; grid ; 
% Calculo do valor medio
soma = 0 ;
for i = 1 : n
    soma = soma + dt * y(i) ;
end 
media = 1/nT * soma ;
for i = 1 : n 
    ym(i) = media ; 
end
plot(t,y,'r',t,ym,'k') ; grid
