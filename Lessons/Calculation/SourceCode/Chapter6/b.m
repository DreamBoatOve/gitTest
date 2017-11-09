function b()
%This slice of codes responds to the 6-2 problem.
%Use QR method for Iteration
A = [4,1,1,1;1,3,-1,1;1,-1,2,0;1,1,0,2];
x1 = [4,1,1,1];
x2 = [1,3,-1,1];
x3 = [1,-1,2,0];
x4 = [1,1,0,2];
%t = [0,0,0];
e = eye(4);
for i = 1 : 3
   t =  -sign(A(i,i))*norm(A(i:4,i),2);
   p = t*(t-A(i,i));
   for k = 1 : i
       a = A(1:4,i) - A()e();
   end
   u = A() - t*e(1:4,i);
end