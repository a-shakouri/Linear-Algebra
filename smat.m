function [S] = smat(v)

s=length(v);

n=((1+8*s)^0.5-1)/2;

% S=zeros(n,n);

k=1;

for i=1:n
    
    for j=i:n
        
        if i==j
            
            S(i,j)=v(k)/2;
        
        else
            
            S(i,j)=1/sqrt(2)*v(k);
            
        end
        
        k=k+1;
        
    end
    
end

S=S+S';

% if length(v)==1
%     
%     S=v(1);
%     
% end
% 
% if length(v)==3
%     
%     S=[v(1)           1/sqrt(2)*v(2)
%        1/sqrt(2)*v(2) v(3)];
%     
% end
% 
% if length(v)==10
%     
%     S=[v(1) 1/sqrt(2)*v(2) 1/sqrt(2)*v(3) 1/sqrt(2)*v(4)
%        1/sqrt(2)*v(2) v(5) 1/sqrt(2)*v(6) 1/sqrt(2)*v(7)
%        1/sqrt(2)*v(3) 1/sqrt(2)*v(6) v(8) 1/sqrt(2)*v(9)
%        1/sqrt(2)*v(4) 1/sqrt(2)*v(7) 1/sqrt(2)*v(9) v(10)];
%     
% end



end

