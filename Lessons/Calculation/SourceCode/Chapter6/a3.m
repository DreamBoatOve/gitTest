function a3()
A = [-1,2,1;2,-4,1;1,1,-6];
A1 = inv(A);
%A = [4,1,1,1;1,3,-1,1;1,-1,2,0;1,1,0,2];
V0 = [1,1,1]';
%V0 = [1,1,1,1]';
err = 1;
%��ǰ�����ε����Ľ�������1e-5���ڣ�����Ϊ�����������
m = 0;
k = 0;
while(err > 1e-10)
    for i = 1 : length(V0)
        if(abs(V0(i)) > abs(m))
            m = V0(i);
        end
    end
    U = V0/m;
    V1 = A1 * U;
    err = abs(V1(1) - V0(1));
    k = k + 1;
    x = V1(1);
    n = U;
    V0 = V1;
end
disp(m);
for w = 1 : length(V1)
    disp(1/V1(w));
end