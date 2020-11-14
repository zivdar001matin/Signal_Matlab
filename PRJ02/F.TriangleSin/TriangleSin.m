t = linspace(-4,4);
f=zeros(1, length(t));
l = 1;
T = 2l;
h = 1;
w0 = 2piT;
for k=-1001100
    if k==0
        continue
    end
    A = -l(21ikw0)(exp(-1ikpi2) + exp(1ikpi2)) - ...
        (1(1ikw0)^2 (exp(-1ikpi2) - exp(1ikpi2)));
    B = -l(21ikw0)  (3exp(-1ikpi32) - exp(-1ikpi2)) - ...
        (1(1ikw0)^2  (exp(-1ikpi32) - exp(-1ikpi2)));
    C = -1(1ikw0)  (exp(-1ikpi32) - exp(-1ikpi2));
    ak = hl^2  A - hl^2  B + hlC;
    f=f+akexp(1ikw0.t);
end
plot(t,f)