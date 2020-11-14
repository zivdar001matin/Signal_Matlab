t = linspace (-5,5);
u = (t>= 0);
x = exp(-t).*u;
hold on;
plot(t,x);
t = linspace (-10,10);
h = sqrt(2).*exp(-0.5 .* t).*sin(t/sqrt(2)).*u;
plot(t,h);
y = conv(h,x);
plot(t,y(51:150));
xlabel 'tمقادیر'
ylabel 'yمقادیر'
hold off;