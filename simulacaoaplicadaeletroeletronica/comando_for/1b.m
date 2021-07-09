clear
x = [ 10.34 10.42 10.25 9.82 10.33 9.66 10.27 10.25 10.30 9.50 9.55 9.40 10.00 9.34 ]
n = length(x)
soma = 0
for i = 1 : n
 soma = soma + x(i) ;
end
media = soma/n ;
soma2 = 0 ;
for i = 1 : n
 soma2 = soma2 + (x(i)-media)^2
end
s = sqrt ((1/(n-1))*soma2)
disp(s)