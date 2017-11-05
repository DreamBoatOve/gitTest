function x1 = c_n(x)
%This slice of codes responds to the 3-3 problem.
%Newton method
x0 = x;
a = 1;
i = 0;
while(a > 1e-4)
    x1 = sin(x0);
    a = abs(x1 - x0);
    x0 = x1;
    i = i + 1;    
end
fprintf('�ڳ�ʼֵΪ%i�������£��ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[x,i,x1]);