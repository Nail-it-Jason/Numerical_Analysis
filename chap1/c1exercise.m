%% 1.1-3
y1 = @(x) 2*x^3-6*x-1;
y2 = @(x) exp(x-2)+x^3-x;
y3 = @(x) 1+5*x-6*x^3-exp(2*x);
figure(1);
fplot(@(x) y1(x), [0, 2]);
grid on;
figure(2);
fplot(@(x) y2(x), [0, 2]);
grid on;
figure(3);
fplot(@(x) y3(x), [0, 2]);
grid on;

% xc1=bisect(y1, 0, 2, 5e-9);
% xc2=bisect(y2, 0, 0.5, 5e-9);
% xc3=bisect(y3, 0.2, 0.6, 5e-9);

%% 1.1-7
A = @(x) det([1 2 3 x; 4 5 x 6; 7 x 8 9; x 10 11 12]);
% xc4 = bisect(A, 0, 5, 5e-9);
%% 1.1-8
% xc5=bisect(@max_eig_hilb, 0, 10, 5e-6);
function m = max_eig_hilb(x)
B = hilb(5);
B(1,1)=x;
m = max(eig(B))-pi
end