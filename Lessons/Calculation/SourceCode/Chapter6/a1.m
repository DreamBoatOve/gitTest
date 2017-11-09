function a1()
%This slice of codes responds to the 6-1 (1)problem.
%Use Power law method for eigenvalue
%A = [133,6,135;44,5,46;-88,-6,-90];
%V0 = [1,1,1]';

A = [4,1,1,1;1,3,-1,1;1,-1,2,0;1,1,0,2];
V0 = [1,1,1,1]';
err = 1;
%当前后两次迭代的结果误差在1e-5以内，则认为结果符合误差精度
m = 0;
k = 0;
x = 0;
while(err > 1e-5)
    for i = 1 : length(V0)-1
        if(abs(V0(i)) > abs(V0(i+1)))
            m = V0(i);
        else
            m = V0(i+1);
        end
    end
    U = V0/m;
    V1 = A*U;
    err = abs(x-m);
    k = k + 1;
    x = m;
    V0 = V1;
end
fprintf('根据幂法迭代：\r\n\t在第%i次迭代后的迭代结果：\r\n\t',[k]);
fprintf('矩阵A的最大特征值是：\r\n\t\t%f\r\n\t',[m]);
fprintf('对应的特征向量是：\r\n');
disp(U);