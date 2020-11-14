len = 1000;
t = linspace(-10, 10, len);
R = 5;
C = 2;
u = t>=0;
h = exp(-t/R*C).* u/(R*C);
Ts = 4;
x = zeros(1, len);
for i=1:len
    if abs(t(i)) < 1
        x(i) = 1 - abs(t(i));
    end
end
y = conv(x, h);
plot(t, y(len/2 : len/2+len-1));