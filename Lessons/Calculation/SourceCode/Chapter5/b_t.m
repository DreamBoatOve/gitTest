function b_t()
%This function is built for usual test
syms x y z;
f = (2*x + sin(y) - 6*z)^2;
g_f = [diff(f,x),diff(f,y),diff(f,z)];
disp(diff(f,x));
d = diff(f,x);
x = 1;
y = 0;
z = 2;
disp(d);
disp(g_f);