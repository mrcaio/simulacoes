clear
x = (rand(1,100)-0.5) + 10;
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