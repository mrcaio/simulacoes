clear
% Gerar uma sequencia de valores
x1(1) = 2 ;
for i = 2 : 7
    x1(i) = x1(i-1) + 2 ;
end
disp(x1) ;
% Gerar uma sequencia de valores 2
x2(1) = 2 ;
for i = 2 : 5
    x2(i) = x2(i-1) + 3 ;
end
disp(x2) ;
% Gerar uma sequencia de valores 3

for i = 1 : 2 : 7
    x3(i) = 1 * 3 ;
end
disp(x3) ;
% Gerar uma sequencia de valores 3
for i =  3 : 10
    x4(i) = i + 9 ;
end
disp(x4) ;
% Soma com comando for
X = [ 8 9 5 10 2 6] ;
N = length(X)
soma = 0 ;
for i = 1 : N
    soma = soma + X(i) ;
end
disp(soma)
% Calculo da media dos valores X
X = [ 8 9 5 10 2 6] ;
N = length(X)
soma = 0 ;
for i = 1 : N
    soma = soma + X(i) ;
end
media = soma/N ;
disp(media)

% Notas
notas = [ round(rand(1,35)*10) ] ;
notas'
N = length(notas)
soma = 0 ;
for i = 1 : N
    soma = soma +notas(i) ; 
end
media = soma/N
disp(media)
