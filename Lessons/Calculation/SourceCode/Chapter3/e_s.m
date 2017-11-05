function res = e_s(a)
%This slice of codes responds to the 3-5 problem.
%Fixed-point iteration method
x(1) = a;
i = 0;
err = 1;
while(err > 1e-4)
    x(2) = (5^(x(1))-4)/3;
    % for test: fprintf('x(2)=%f\r\n',x(2));
    f = 3 * x(2) - 5^(x(2)) + 4;
    % for test: fprintf('f=%f\r\n',f);
    err = abs(f);
    i = i + 1;    
    x(1) = x(2);    
end
res = x(2);
fprintf('���ݲ�������������ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[a,i,res]);