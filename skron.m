function M = skron(A,B)
% symmetric kronecker product for two square matrices, each of size nxn
n = size(A,1);
U = eye(n^2);
a = reshape(1:n^2,n,n);
b = a';
U = U + U(b(:),:);
c = tril(a);
c = c(:);
c(c==0) = [];
U = U(c,:);
U(U==1) = 1/sqrt(2);
U(U==2) = 1;
M = (1/2)*U*(kron(A,B)+kron(B,A))*U';
end

