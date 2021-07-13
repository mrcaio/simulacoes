clear;
f = 1/pi;
w = 2*pi*f;
T = 1/f;
ps = T/500;
t = 0 : ps : 3*T;
y = 10 * sin(w*t);
n = length(t);
sm = 0;
sm2 = 0;
for i = 1 : n
 if (y(i) < 0 )
 y(i) = 4;
 end
 sm = sm + y(i)*ps;
 sm2 = sm2 + (y(i)^2)*ps;
end
plot(t,y);
grid
