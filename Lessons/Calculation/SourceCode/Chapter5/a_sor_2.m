function a_sor_2(w)
%w:松弛因子
%This slice of codes responds to the 5-1 (2)problem.
%Sor method
A = [13.3,-4,-1,3.5,-3.8;3.4,9,-3,4.4,2.3;4.1,1,7,2.7,5.9;2.5,-2.4,1,13,5.6;1.5,-1,-3,4.3,14.9];
b = [5.8,4.3,2.6,3.8,4.2]';
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