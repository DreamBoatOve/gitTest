function at(n)
syms x;
f = log(x + 1)/x;
a = 0.001 : 1/n : 1;
a(n+1) = 1;
sum = 0;
for i = 1 : n
    sum = sum + (1/n)*(subs(f,x,a(i))+subs(f,x,a(i+1)))/2;
end
fprintf('���������䱻%i�ȷ�ʱ�����ֽ��Ϊ��\r\n\t',[n]);
disp(vpa(sum));