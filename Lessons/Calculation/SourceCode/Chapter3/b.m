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
fprintf('在初始值为%i的条件下，在第%i次迭代后，结果为%i，误差小于0.0001\r\n',[x,i,x1]);