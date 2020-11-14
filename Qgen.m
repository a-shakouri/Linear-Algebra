function [Q] = Qgen(n)

% Note: This code is derived from the follwoing link:
%       "https://www.mathworks.com/matlabcentral/answers/361452-symmetric-kronecker-product-in-matlab#answer_286112"
%       that is provided by David Goodmanson on 17 Oct 2017. 

Q = eye(n^2);
a = reshape(1:n^2,n,n);
b = transpose(a);
Q = Q + Q(b(:),:);
c = tril(a);
c = c(:);
c(c==0) = [];
Q = Q(c,:);
Q(Q==1) = 1/sqrt(2);
Q(Q==2) = 1;

end

