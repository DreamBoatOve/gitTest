function res = a_j_t()
%This slice of codes responds to the 5-1 problem.
%Jacobi method for test
A = [10,-2,-1;-2,10,-1;-1,-2,5];
b = [3,15,10]';
len = length(b);
D1 = zeros(len,len);
for i = 1 : len
    %At this moment, D is transfered into the inverse of D1
    D1(i,i) = 1/A(i,i);
end
B = eye(len) - D1*A;
g = D1*b;
%The iteration part;
x1 = [0,0,0]';
x2 = [0,0,0]';
dx = 1;
k = 0;
while(dx > 1e-5)
    x2 = B*x1 + g;
    dx = norm(x2-x1,inf)/norm(x2,inf);
    k = k + 1;
    x1 = x2;
end
res = x2;

