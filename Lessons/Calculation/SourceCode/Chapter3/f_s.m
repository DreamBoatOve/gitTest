function res = f_s(q)
%This slice of codes responds to the 3-6 problem.
%Steffensen method
x(1) = q;
i = 0;
a = 1;
while(a > 1e-4)
    for k = 1 : 2
        x(k+1) = x(k) - (x(k) - sin(x(k)))/(1 - cos(x(k)));
    end
    %The acceleration of Atiken
    p = x(1) - (x(2) - x(1))^2/(x(3) - 2*x(2) + x(1));
    f = p - sin(p);
    a = abs(f);
    
    i = i + 1;
    x(1) = p;
end
res = p;
fprintf('����Steffensen����Newton���ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[q,i,p]);