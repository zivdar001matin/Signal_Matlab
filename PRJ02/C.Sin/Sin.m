t = linspace(-10,10);
f=zeros(1, length(t));
T = 2*pi;
w0 = 2*pi/T;
for k=-100:1:100
    if k == 1
        ak = 1/(2*1i); 
    else if k == -1
        ak = -1/(2*1i);     
    else
        ak = 0;
    end
    end
    f=f+ak*exp(1i*k*w0.*t);
end
plot(t,f)