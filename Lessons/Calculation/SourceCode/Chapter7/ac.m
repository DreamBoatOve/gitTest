function ac()
syms x;
f = 1/(1 + 25*x^2);

for i = 1 : 11
    b(i) = -cos((i-1)*pi/10);
    yb(i) = subs(f,x,b(i));
end

fb = 0;
for i = 1 : 11
    fb1 = 1;
    for k = 1 : 11
        if(i ~= k)
            fb1 = fb1*(x - b(k))/(b(i) - b(k));
        end
    end
    fb = fb + yb(i)*fb1;
end

u = -1 : 1/200 : 1;
for i = 1 : length(u)
    v(i) = subs(f,x,u(i));
    v10(i) = subs(fb,x,u(i));
end
plot(u,v,'-.b',u,v10,'-.gh');