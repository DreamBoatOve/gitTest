function x1 = d_n(x)
%This slice of codes responds to the 3-4 problem.
%Newton method
x0 = x;
i = 0;
a = 1;
while(a > 1e-4)
    x1 = x0 + (x0*cos(x0)^2-sin(x0)*cos(x0))/((sin(x0))^2);
    a = abs(x1 - x0);
    i = i + 1;
    x0 = x1;
end
fprintf('����Newton���������ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[x,i,x1]);