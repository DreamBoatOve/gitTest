function x1 = b(x)
%This slice of codes responds to the 3-2 problem.
x0 = x;
a = 1;
i = 0;
while(a > 1e-4)
    x1 = x0 - (exp(x0)-2*x0-3)/(exp(x0)-2);
    a = abs(x1 - x0);
    x0 = x1;    
    i = i + 1;
end
fprintf('�ڳ�ʼֵΪ%i�������£��ڵ�%i�ε����󣬽��Ϊ%i�����С��0.0001\r\n',[x,i,x1]);