function x1 = a_3(x)
%Third iterative method
i = 0;
x0 = x;
while(i < 100)
    x1 = exp(x0) - x0 -3;
    x0 = x1;
    i = i + 1;
    %Terminate the process and output the result when the abs between x1 and x0 is less than 1e-4
    while( abs( x1 - x0 ) < 1e-4)
        fprintf('�ڳ�ʼֵΪ%i�������£��ڵ�%i�ε����󣬽��Ϊ%i�����С��0.0001\r\n',[x,i,x1]);
        break;
    end
end