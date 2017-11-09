function r()
syms x;
f = log(x + 1)/x;
a = 0.001 : 1/8 : 1;
a(9) = 1;
for i = 1 : 9
    y(i) = subs(f,x,a(i));
end
T1(1) = (1/2)*(y(1) + y(9));
T1(2) = (1/2)*(T1(1) + y(5));
T1(3) = (1/2)*(T1(2) + 0.5*(y(3) + y(7)));
T1(4) = (1/2)*(T1(3) + 0.25*(y(2) + y(4) + y(6) + y(8)));
for i = 1 : length(T1) - 1
    T2(i) = T1(i+1) + (T1(i+1)-T1(i))/3;
end
for i = 1 : length(T2) - 1
    T3(i) = T2(i+1) + (T2(i+1) - T2(i))/15;
end
T4 = T3(2) + (T3(2) - T3(1))/63;
fprintf('根据Romberg求积公式计算得：T4 = %f',[T4]);