function a2()
%This slice of codes responds to the 6-1 (2) problem.
%Use Iverse Power law method for eigenvalue
A = [4,1,1,1;1,3,-1,1;1,-1,2,0;1,1,0,2];
V0 = [1,1,1,1]';

%A = [-1,2,1;2,-4,1;1,1,-6];
%A = [1.5,0,0;0,2,0;0,0,3];
%V0 = [1,1,1]';
A1 = inv(A);
err = 1;
%��ǰ�����ε����Ľ�������1e-5���ڣ�����Ϊ�����������
m = 0;
k = 0;
x = 0;
while(err > 1e-10)
    for i = 1 : (length(V0) - 1)
        if(abs(V0(i)) > abs(V0(i+1)))
            m = V0(i);
        else
            m = V0(i+1);
        end
    end
    %fprintf('m=%f\r\n',[m]);
    U = V0/m;
    V1 = A1*U;
    %disp(V1);
    err = abs(x - m);
    x = m;
    k = k + 1;
    V0 = V1;
end
fprintf('���ݷ��ݷ�������%i�εĵ������㣬����A����С����ֵΪ��%f\r\n\t',[k,1/m]);
fprintf('��Ӧ����������Ϊ��%f,%f,%f',[1/U(1),1/U(2),1/U(3)]);