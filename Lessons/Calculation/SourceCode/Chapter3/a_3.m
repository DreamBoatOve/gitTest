function x1 = a_3(x)
%Third iterative method
i = 0;
while(i < 100)
    x1 = exp(x) - x -3;
    x = x1;
    i = i + 1;
    disp(x1);
end