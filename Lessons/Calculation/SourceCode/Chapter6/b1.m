function b1()
A = [4,1,1,1;1,3,-1,1;1,-1,2,0;1,1,0,2];
e = eye(4);

x1 = A(1:4,1);
q1 = -sign(x1(1))*norm(x1,2);
p1 = q1*(q1 - x1(1));
u1 = x1 - q1*e(1:4,1);
h1 = e - (1/p1)*u1*(u1');
fprintf('h1=\r\n');
disp(h1);
A1 = h1*A;
fprintf('A1=\r\n');
disp(A1);

x2 = A1(1:4,2);
q2 = -sign(x2(2))*norm(x2(2:4),2);
p2 = q2*(q2 - x2(2));
u2 = [0,x2(2) - q2,x2(3),x2(4)]';
h2 = e - (1/p2)*u2*u2';
fprintf('h2=\r\n');
disp(h2);
A2 = h2*A1;
fprintf('A2=\r\n');
disp(A2);

x3 = A2(1:4,3);
q3 = -sign(x3(3))*norm(x3(3:4),2);
p3 = q3*(q3 - x3(3));
u3 = [0,0,x3(3)-q3,x3(4)]';
h3 = e - (1/p3)*u3*u3';
fprintf('h3=\r\n');
disp(h3);
A3 = h3*A2;
fprintf('A3=\r\n');
disp(A3);