len = 1000;
t = linspace(-10, 10, len);
R = 5;
C = 2;
w = linspace(-10, 10, len);
magnitude = (1/R*C) ./ sqrt((1/R*C)^2 + w.*w);
phase = -atan(w./(1/R*C));
%plot(t, magnitude);
plot(t, phase);
xlabel 'w'
%ylabel '|H(jw)|'
ylabel '<H(jw)'