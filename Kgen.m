function [K] = Kgen(m,n)

%[m, n] = size(A);

I = reshape(1:m*n, [m, n]);
I = I';
I = I(:);
K = eye(m*n);
K = K(I,:);

end

