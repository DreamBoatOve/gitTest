function res = a_j_2()
%This slice of codes responds to the 5-1 (2)problem.
%Jacobi method
A = [13.3,-4,-1,3.5,-3.8;3.4,9,-3,4.4,2.3;4.1,1,7,2.7,5.9;2.5,-2.4,1,13,5.6;1.5,-1,-3,4.3,14.9];
b = [5.8,4.3,2.6,3.8,4.2]';
len = length(b);
D1 = zeros(len,len);
for i = 1 : len
    %At this moment, D is transfered into the inverse of D1
    D1(i,i) = 1/A(i,i);
end
B = eye(len) - D1*A;
g = D1*b;
%The iteration part;
x1 = [0,0,0,0,0]';
x2 = [0,0,0,0,0]';
dx = 1;
k = 0;
while(dx > 1e-5)
    x2 = B*x1 + g;
    dx = norm(x2-x1,inf)/norm(x2,inf);
    k = k + 1;
    x1 = x2;
end
res = x2;
fprintf('根据Jacobi迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);