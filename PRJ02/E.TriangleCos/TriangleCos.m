t = linspace(-4,4);
f=zeros(1, length(t));
l = 2;
T = l;
h = 1;
w0 = 2*pi/T;
f=f+h/2;
for k=-10:1:10
    if k==0
        continue
    end
    ak = (2*h/(l*k*w0)^2) * (exp(-1i*k*pi)*(1i*k*pi+1)+exp(1i*k*pi)*(-1i*k*pi+1)-2);
    f=f+ak*exp(1i*k*w0.*t);
end
plot(t,f)