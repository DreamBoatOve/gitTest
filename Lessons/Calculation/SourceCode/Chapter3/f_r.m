function res = f_r(q)
%This slice of codes responds to the 3-6 problem.
%Double root iterative method
x(1) = q;
a = 1;
i = 0;
while(a > 1e-4)
    x(2) = x(1) - 3*(x(1) - sin(x(1)))/(1 - cos(x(1)));
    f = x(2) - sin(x(2));
    a = abs(f);
    i = i + 1;
    x(1) = x(2);
end
res = x(2);
fprintf('根据不动点迭代法，在初始值为%i的条件下：\r\n\t在第%i次迭代后，结果为%f，误差小于0.0001\r\n',[q,i,res]);