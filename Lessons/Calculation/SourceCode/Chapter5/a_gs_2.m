function a_gs_2()
%This slice of codes responds to the 5-1 (2)problem.
%Gauss-Seidel method for test
A = [13.3,-4,-1,3.5,-3.8;3.4,9,-3,4.4,2.3;4.1,1,7,2.7,5.9;2.5,-2.4,1,13,5.6;1.5,-1,-3,4.3,14.9];
b = [5.8,4.3,2.6,3.8,4.2]';
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