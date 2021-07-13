clear
x = 0.5236
sm=0;
for i = 1:3
sm = sm+(-1^i)/factorial(2*i)*x^(2*i);
end
coss = 1+ sm
disp(coss);
