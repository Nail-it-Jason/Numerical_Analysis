function x = LU_decomp(A, b, n)
for j = 1 : n-1
    if abs(A(j, j)) < eps; error('zero pivot encountered'); end
    % 消去列j
    for i = j+1 : n
    % 消去元素a(i, j)
    mult = A(i, j) / A(j, j);
    A(i, j) = mult;
    for k = j+1 : n
        A(i, k) = A(i, k) - mult*A(j, k);
        
    end
    end
end
% A包含L和U, 两步回代
% Ux = c, Lc=b
% 1      c1
% 2 1    c2
% 1 0 1  c3
c = b;
for m = 2:n
    for t = 1:m-1
        c(m) = c(m)-A(m, t)*c(t);
    end
end

for i = n : -1 : 1
    for j = i+1 : n
        c(i) = c(i) - A(i, j)*x(j);
    end
    x(i) = c(i)/A(i, i);
end
end

