# VecMatKron-Symmetric 

Vectorization (Vec), matricization (Mat), and Kronecker product (Kron) for symmetric matrices.

## File(s)

This repository includes the following MATLAB script functions: 

1- Symmetric Kronecker product between two matrices A and B: C=skron(A,B). 

2- Symmetric vectorization operator of a symmetric matrix S: s=svec(S). 

3- Symmetric matricization operator of a n(n+3)/2-dimensional vector v: S=smat(s). 

4- The commutation matrix: Kgen(n,m). 

5- The Q matrix needed for symmetric operations: Qgen(n). 

## Reference(s)

The codes of function "Qgen.m" are derived from a [comment](https://www.mathworks.com/matlabcentral/answers/361452-symmetric-kronecker-product-in-matlab#answer_286112) by David Goodmanson on 17 Oct 2017. 

## License(s)

[MIT](https://choosealicense.com/licenses/mit/)
