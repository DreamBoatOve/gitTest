function al()
syms x;
f = 1/(1 + 25*x^2);
a = -1 : 2/5 : 1;
%��������ȷ�
for i = 1 : 6
    y5(i) = subs(f,x,a(i));
end
fprintf('y5=\r\n');
disp(y5);
%�������ʽ��ֵ��ʽ
fa = 0;
for i = 1 : 6
    fa1 = 1;
    for k = 1 : 6
        if(i ~= k)
            fa1 = fa1*(x-a(k))/(a(i) - a(k));
        end        
    end
    fa = fa + y5(i)*fa1;
end
fprintf('��������ȷֺ󣬸���Lagrange��ֵ�õ��Ķ���ʽ��ʽΪ��fa=\r\n\t');
disp(fa);
disp(subs(fa,x,-1));
%������ʮ�ȷ�
b = -1 : 2/10 : 1;
for i = 1 : 11
    y10(i) = subs(f,x,b(i));
end
fprintf('y10=\r\n');
disp(y10);
%�������ʽ��ֵ��ʽ
fb = 0;
for i = 1 : 11
    fb1 = 1;
    for k = 1 : 11
        if(i ~= k)
            fb1 = fb1*(x-b(k))/(b(i) - b(k));
        end
    end
    fb = fb + y10(i)*fb1;
end    
fprintf('������ʮ�ȷֺ󣬸���Lagrange��ֵ�õ��Ķ���ʽ��ʽΪ��fb=\r\n\t');
disp(fb);

%Draw graphic
u = -1 : 2/100 : 1;
for i = 1 : length(u)
    v(i) = subs(f,x,u(i));
    v5(i) = subs(fa,x,u(i));
    v10(i) = subs(fb,x,u(i));
end
plot(u,v,'-.b',u,v5,'--r*',u,v10,'-.gh');