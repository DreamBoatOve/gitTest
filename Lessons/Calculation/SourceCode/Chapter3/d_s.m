function p1 = d_s(x)
%This slice of codes responds to the 3-4 problem.
%Steffensen method
n = 0;
p(1) = x;
while(n <= 1000)
    %get p(1),p(2),p(3)
    for k = 1 : 2
        p(k+1) = tan(p(k));
    end
    %The acceleration of Atiken
    p1 = p(1) - ( p(2) - p(1) )^2/(p(3) - 2*p(2) + p(1));
    f0 = p1 - tan(p1);
    if( abs(f0) < 1e-4 )
        break;
    end
    n = n + 1;
    p(1) = p1;
end
fprintf('����Atiken���٣��ڳ�ʼֵΪ%i�������£�\r\n\t�ڵ�%i�ε����󣬽��Ϊ%f�����С��0.0001\r\n',[x,n,p1]);