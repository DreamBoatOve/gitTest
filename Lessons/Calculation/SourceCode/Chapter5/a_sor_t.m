function a_sor_t(w)
%This slice of codes responds to the 5-1 (1)problem.
%For Sor method test
A = [10,-2,-1;-2,10,-1;-1,-2,5];
b = [3,15,10]';
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
x0 = [0,0,0]';
x1 = [0,0,0]';
k = 0;
while(err > 1e-5)
    x1 = B*x0 + d;
    err = norm(x1-x0,inf)/norm(x1,inf);
    x0 = x1;
    k = k + 1;
end
disp(x1);
