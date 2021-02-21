function output = stirling2(numormat,a,b)


%Stirling number/matrix of the second kind.
%By: Amir Shakouri
%Date: 22/02/2021


%Help:

%Standard case: 
%               Input 1: 'matrix' or 'number'
%               Input 2: The dimension of the matrix minus one, or
%                        Stirling number with equal arguments (=1)
%               Input 3: A Stirling number with the specified arguments

%Special cases:

%              1) If only the first input is specified: The ouput is the Striling matrix of
%                 the first kind with the specified dimension

%              2) If only the first two inputs are specified:
%                 2-a) If both inputs are numbers, then the output is the
%                      Stirling number with the specified arguments
%                 2-b) If the first input is "matrix", then the output is a
%                      Stirling matrix with the specified dimension
%                 2-c) If the first input is "number", then the ouput the a
%                      Stirling number with equal arguments (=1)


switch nargin
    case 1 %If only the first argument is specified
        
         if ischar(numormat)==1
             
             error('Please specify the second (and third) argument(s).');
             
         else
             
             n=numormat+1;
             
         end
        
    case 2 %If only the first two arguments are specified
        
        if ischar(numormat)==1
            switch numormat
                case 'number'
                    nomen=a;
                    denom=a;
                    n=a+1;
                case 'matrix'
                    n=a+1;
                otherwise
                    error('If the first input is a character, it should be "number" or "matrix".');
            end
        else
            nomen=numormat;
            denom=a;
            n=max(nomen,denom)+1;
        end
        
    case 3 %If the first three arguments are specified
        
        if ischar(numormat)==1
            switch numormat
                case 'number'
                    nomen=a;
                    denom=b;
                    n=max(a,b)+1;
                case 'matrix'
                    error('If the first input is "matrix", only one other arguments should be specified.');
                otherwise
                    error('If the first input is a character, it should be "number" or "matrix".');
            end
        else
            error('If the first input is not a character, only two input arguments should be specified.');
        end
        
    otherwise
        
        error('Do not specify more than three arguments');
                
end

S=zeros(n,n);

for i=1:n
    
    for j=1:n
        
        if i>=j
            
            m=0;

            for l=0:j-1
    
                sum=1/factorial(j-1)*(-1)^l*(factorial(j-1)/(factorial(l)*factorial(j-1-l)))*(j-1-l)^(i-1);
                
                m=m+sum;
                
            end
            
            S(i,j)=m;
            
        end
        
    end
    
end
    

switch nargin
    case 1 %If only the first argument is specified
         output=S;
    case 2 %If only the first two arguments are specified
        if ischar(numormat)==1
            switch numormat
                case 'number'
                    output=S(nomen+1,denom+1);
                case 'matrix'
                    output=S;
            end
        else
            output=S(nomen+1,denom+1);
        end
    case 3 %If the first three arguments are specified
        output=S(nomen+1,denom+1);        
end