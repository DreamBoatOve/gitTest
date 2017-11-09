function as(n)
syms x;
f = log(x + 1)/x;
a = 0.001 : 1/n : 1;
a(n+1) = 1;
sum = 0;
for i = 1 : n
    sum = sum + (1/n)*(subs(f,x,a(i)) + 4*subs(f,x,(a(i) + a(i+1))/2)+subs(f,x,a(i+1)))/6;
end
fprintf('当积分区间被%i等分时，积分结果为：\r\n\t',[n]);
disp(vpa(sum));