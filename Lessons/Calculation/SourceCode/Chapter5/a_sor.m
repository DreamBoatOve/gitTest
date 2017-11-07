function a_sor(w)
%w:松弛因子
%This slice of codes responds to the 5-1 (1)problem.
%Sor method
A = [12.3,-2,-1,3.4,-3.7;1.4,9,-3,2.4,2.7;2.1,1,8,2.6,5.8;3.5,-2.1,1,13,4.6;2.5,-1,-2,5.3,14.8];
b = [4.8,2.3,2.5,3.6,2.2]';
len = length(b);
D = eye(len);
for i = 1 : len
    D(i,i) = A(i,i);
end
L = tril(A - D);
U = triu(A - D);
%The main part of Sor
err = 1;
B = inv(D + w*L)*((1-w)*D - w*U);
d = w*inv(D + w*L)*b;
x0 = [0,0,0,0,0]';
x1 = [0,0,0,0,0]';
k = 0;
while(err > 1e-5)
    x1 = B*x0 + d;
    err = norm(x1-x0,inf)/norm(x1,inf);
    x0 = x1;
    k = k + 1;
end
fprintf('根据Sor迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);
disp(x1);