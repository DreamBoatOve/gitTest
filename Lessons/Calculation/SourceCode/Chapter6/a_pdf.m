function a_pdf()
max1 = 100;
eps = 1e-10;
A = [-1,2,1;2,-4,1;1,1,-6];
u0 = [1,1,1]';
u = u0;
L = 0;
k = 0;
err = 1;
A = inv(A);
while((k < max1)&(err > eps))
    v = A*u;
    [m,j] = max(abs(v));
    m = v(j);
    fprintf('m=%f\r\n',[m]);
    u = v/m;
    err = abs(L - m);
    L = m;
    k = k + 1;
end
disp(k);
disp(1/L);
disp(u);