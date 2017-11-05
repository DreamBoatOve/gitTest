function x1 = c_s(x)
%This slice of codes responds to the 3-3 problem.
%Newton method
x0 = x;
i = 0;
a = 1;
while(a > 1e-4)
    x1 = x0 - (x0-sin(x0))/(1-cos(x0));
    a = abs(x1 - x0);
    x0 = x1;
    i = i + 1;
end
fprintf('�ڳ�ʼֵΪ%i�������£��ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[x,i,x1]);