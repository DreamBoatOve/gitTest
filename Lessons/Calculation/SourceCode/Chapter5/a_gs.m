function a_gs()
%This slice of codes responds to the 5-1 (1)problem.
%Gauss-Seidel method for test
A = [12.3,-2,-1,3.4,-3.7;1.4,9,-3,2.4,2.7;2.1,1,8,2.6,5.8;3.5,-2.1,1,13,4.6;2.5,-1,-2,5.3,14.8];
b = [4.8,2.3,2.5,3.6,2.2]';
len = length(b);
D = eye(len);
D1 = eye(len);
x0 = [0,0,0,0,0]';
x1 = [0,0,0,0,0]';
for i = 1 : len
    D(i,i) = A(i,i);
    D1(i,i) = 1/A(i,i);
end
%The core part of Gauss Seidel
err = 1;
k = 0;
while(err > 1e-5)
    x1 = -1*D1*(A-D)*x0 + D1*b;
    err = norm((x1 - x0),inf)/norm(x1,inf);
    k = k + 1;
    x0 = x1;
end
fprintf('根据Gauss Seidel迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);
disp(x1);