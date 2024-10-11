filename1='C:\Users\HanJX\Documents\MATLAB\numerical_analysis\chap1\0_4_1_a.csv'
filename2='C:\Users\HanJX\Documents\MATLAB\numerical_analysis\chap1\0_4_1_b.csv'
arrayx = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12 1e-13 1e-14]

fid1 = fopen(filename1, 'w');
fprintf(fid1, ['x, f(x), newf(x), \n']);
for i = 1:14
    x = arrayx(i);
    ans1 = func_1(x);
    ans2 = neofunc_1(x);
    fprintf(fid1, ['%s, %s, %s, \n'], x, ans1, ans2);
end

fid2 = fopen(filename2, 'w');
fprintf(fid2, ['x, f(x), newf(x), \n']);
for i = 1:14
    x = arrayx(i);
    ans1 = func_2(x);
    ans2 = neofunc_2(x);
    fprintf(fid2, ['%s, %s, %s, \n'], x, ans1, ans2);
end

function y_1=func_1(x)
    y_1 = (1-sec(x))/(tan(x)^2);
end
function y_1=neofunc_1(x)
    y_1 = (cos(x)^2-cos(x))/(sin(x)^2);
end
function y_2=func_2(x)
    y_2 = (1-(1-x)^3)/x;
end
function y_2=neofunc_2(x)
    y_2 = (3-3*x+x^2);
end