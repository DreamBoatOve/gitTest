function x1 = a_2(x)
%Second iterative method
i = 0;
while(i < 100)
    x1 = log(2*x+3);
    x = x1;
    i = i + 1;
    disp(x1);
end