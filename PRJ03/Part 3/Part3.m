len = 1000;
t = linspace(-10, 10, len);
R = 5;
C = 2;
u = t>=0;
h = exp(-t/R*C).* u/(R*C);
x = u;
y = conv(x, h);
plot(t, y(500:1499));