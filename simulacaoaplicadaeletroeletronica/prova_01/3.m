clear;
f = 1/pi;
w = 2*pi*f;
T = 1/f;
dt = T/500;
t = 0 : dt : 3*T;
y = 10 * sin(w*t);
n = length(t);
soma = 0;
for i = 1 : n
 if (y(i) < 0 )
 y(i) = 4;
 end
end
srms = 0;
for i = 1:n
soma = soma + (y(i))^2;
end
srms = sqrt((1/T) * soma * dt);
plot(t,y);
xgrid
disp(srms)
