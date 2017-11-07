function b_n(a)
%This slice of codes responds to the 5-2 problem.
%Newton method
err = 1;
k = 0;
b = [0,0,0];
while(err > 1e-5)
    f1 = 3*a(1) - cos(a(2)*a(3)) - 0.5;
    f2 = a(1)^2 - 81*((a(2) + 0.1)^2) + sin(a(3)) + 1.06;
    f3 = exp(-a(1)*a(2)) + 20*a(3) + (10*pi - 3)/3;
    F = [f1,f2,f3]';
    dF = [3,a(3)*sin(a(2)*a(3)),a(2)*sin(a(2)*a(3));2*a(1),-162*(a(2) + 0.1),cos(a(3));-a(2)*exp(-a(1)*a(2)),-a(1)*exp(-a(1)*a(2)),20];
    b = a - inv(dF)*F;
    err = norm(b - a,inf)/norm(b,inf);
    k = k + 1;
    a = b;
end
fprintf('根据Newton method迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n',[k]);
disp(b);