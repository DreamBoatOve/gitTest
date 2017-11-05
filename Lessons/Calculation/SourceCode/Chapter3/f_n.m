function res = f_n(q)
%This slice of codes responds to the 3-6 problem.
%Newton method
x(1) = q;
a = 1;
i = 0;
while(a > 1e-4)
    x(2) = x(1) - (x(1) - sin(x(1)))/(1 - cos(x(1)));
    f = x(2) - sin(x(2));
    a = abs(f);
    i = i + 1;
    x(1) = x(2);
end
res = x(2);
fprintf('���ݲ�������������ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[q,i,res]);