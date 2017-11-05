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
fprintf('在初始值为%i的条件下，在第%i次迭代后，结果为%f，误差小于0.0001\r\n',[x,i,x1]);