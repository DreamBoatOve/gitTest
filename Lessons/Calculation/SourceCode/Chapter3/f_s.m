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
fprintf('根据Steffensen加速Newton，在初始值为%i的条件下：\r\n\t在第%i次迭代后，结果为%f，误差小于0.0001\r\n',[q,i,p]);