function res = e_n(c)
%This slice of codes responds to the 3-5 problem.
%Newton method
x(1) = c;
i = 0;
a = 1;
while(a > 1e-4)
    x(2) = ((1-x(1)*log(5))*5^(x(1)) - 4)/(3-log(5)*5^(x(1)));
    f = 3*x(2) - 5^(x(2)) + 4;
    a = abs(f);
    i = i + 1;
    x(1) = x(2);
end
res = x(2);
fprintf('���ݲ�������������ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[c,i,res]);