function b_e(x)
%This slice of codes responds to the 5-2 problem.
%Steepest descent method
syms x1 x2 x3 r;
y = (3*x1 - cos(x2*x3) - 0.5)^2 + (x1^2 - 81*(x2 + 0.1)^2 + sin(x3) + 1.06)^2 + (exp(-x1*x2) + 20*x3 + (10*pi - 3)/3)^2;
ydx1 = diff(y,x1);
ydx2 = diff(y,x2);
ydx3 = diff(y,x3);
%Iteration part
err = 1;
a = x;
G = [0,0,0]';
Ymin = 1000;
R = 0;
B = [0,0,0]';
k = 0;
while(err > 1e-5)
    G(1) = -subs(ydx1,{x1,x2,x3},{a(1),a(2),a(3)});
    G(2) = -subs(ydx2,{x1,x2,x3},{a(1),a(2),a(3)});
    G(3) = -subs(ydx3,{x1,x2,x3},{a(1),a(2),a(3)});    
    %for r = 0 : 0.0001 : 1
    for r = 0 : 0.00002 : 0.0001
        b = a + r*G;
        y1 = subs(y,{x1,x2,x3},{b(1),b(2),b(3)});
        if(Ymin > y1)
            Ymin = y1;
            R = r;
            B = b;
        end
    end    
    k = k + 1;
    err = norm(B-a,inf)/norm(B,inf);
    a = B;
end
fprintf('根据Steepest descent method迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);
disp(B);