t = linspace(-10,10);
f=zeros(1, length(t));
T = 1;
w0 = pi/(2*T);
f=f+1/2;
for k=1:2:100
    ak = 1/(2*T*k*w0) * sin(k*w0*T);
    f=f+ak*exp(1i*k*w0.*t);
end
plot(t,f)