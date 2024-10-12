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
% function m = max_eig_hilb(x)
% B = hilb(5);
% B(1,1)=x;
% m = max(eig(B))-pi
% end
%% 1.2-7
g = @(x) 1-5*x+15*x^2/2-5*x^3/2;
% 0-1 fluctuate
xc6 = fpi(g, 1-sqrt(3/5)+0.01, 20);
% 1-2 fluctuate
xc7 = fpi(g, 1+sqrt(3/5)+0.01, 30);
% infinity
xc8 = fpi(g, 3, 40);
%% 1.3-3
f =@(x) 2*x*cos(x)-2*x+sin(x^3);
FE = fzero('2*x*cos(x)-2*x+sin(x^3)', [-0.1, 0.2]);
BE = f(FE);
%% 1.4-3 compare newton iter and improved newton iter
% f(x)=27x^3+54x^2+36x+8
% f'(x)=81x^2+108x+36
% f''(x)=162x+108
% x=-2/3 trio-zero point
f = @(x) x-(27*x^3+54*x^2+36*x+8)/(81*x^2+108*x+36);
g = @(x) x-(27*x^3+54*x^2+36*x+8)/(27*x^2+36*x+12);
for i=1:25
    fprintf('%d: %f  ---  %f\n', i, fpi(f,-5,i), fpi(g, -5, i));
end