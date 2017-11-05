function res = a_j()
%This slice of codes responds to the 5-1 (1)problem.
%Jacobi method
A = [12.3,-2,-1,3.4,-3.7;1.4,9,-3,2.4,2.7;2.1,1,8,2.6,5.8;3.5,-2.1,1,13,4.6;2.5,-1,-2,5.3,14.8];
b = [4.8,2.3,2.5,3.6,2.2]';
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
    %fprintf('dx = %f',dx);
    k = k + 1;
    x1 = x2;
end
res = x2;
fprintf('根据Jacobi迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);
disp(res);