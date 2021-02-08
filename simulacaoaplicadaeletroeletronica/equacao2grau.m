% Raizes de equacoes do 2 grau
clear;
% entrada de parametros 
a = 1
b = 2
c = 1
det = b^2 -4*a*c
if (det > 0)
    disp('raizes reais e distintas') ;
    r1 = (-b + sqrt(det)) / (2*a)
    r2 = (-b - sqrt(det)) / (2*a)
end
if (det == 0)
    disp('raizes reais e iguais') ;
    r1 = -b/(2*a)
    r2 = r1 
end
if (det < 0)
    j = sqrt(-1) ;
    disp('raizes completas') ; 
    x1 = -b/(2*a);
    x2 = x1 ; 
    y1 = sqrt (4*a*c - b^2) / (2*a);
    y2 = -sqrt(4*a*c - b^2) / (2*a);
    r1 = x1 + j*y1
    r2 = x2 + j*y2
end

    