t = linspace(-4,4);
f=zeros(1, length(t));
T = 1;
w0 = 2*pi/T;
f = f + 1/2;
for k=-100:1:100
    if k==0
        continue
    end
    ak = 1/(-1i*k*w0) * exp(-1i*k*w0) + 1/(k*w0)^2 * (exp(-1i*k*w0) - 1);
    f=f+ak*exp(1i*k*w0.*t);
end
plot(t,f)