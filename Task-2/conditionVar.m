function [ con ] = conditionVar (A , iter, tol )
%Done by Mohd Wafa. Student ID number : 302539. 
%Solution for Task-2 Question number 9.
%INPUTS ---
%A - the symmetric and positive definite matrix.
% iter - number of iterations for the inverse power method
%tol - tolerance for the power method

%OUTPUT---
%con - The condition variable of the matrix.


%A check whether the matrix fits the requirements
tf = issymmetric(A);
d = eig(A);
isposdef = all(d > 0);
if tf == 0 && isposdef == 0
   fprintf('\n The matrix is not symmetric positive definite\n');
   return;
else
    fprintf('\n The matrix is symmetric positive definite\n');
end



%Below is the calculation for the inverse power method using LU
%decompostion to get the minimum eigenvalue of the matrix

[ L, U, P ] = LUfact( A ); % LU decomposition of A with pivoting from a \
%                            user defined function named LUfact.
m = size (A ,1); % determine the size of A
x = ones (m ,1); % make an initial vector with ones
for i = 1: iter
px = P * x ; % Apply pivot
y = L \ px ; % solve via LU
x = U \ y ;
% find the maximum entry in absolute value , retaining its sign
M = max( x );
m = min( x );
if abs ( M ) >= abs ( m )
inv_min = M ;
else
inv_min = m ;
end
x = x / inv_min ; % divide by the estimated eigenvalue of the inverse of A
end
min_eig = 1/ inv_min ; % reciprocate to get an eigenvalue of A

%Below is the calculation for the power method to get the maximum
%eigenvalue in the matrix
max_eig =1;
t = size(A,1);
u = ones(t,1);
eps = tol;
v = A*u; 
m_2 = max(abs(v));
err = abs(max_eig-m_2);
 while err>eps  
   v = A*u; 
   m_2 = max(abs(v));
   u = v/m_2;
   err=abs(max_eig - m_2);
   max_eig = m_2;
 end


%Below is the main result displaying of the respective eigenvalues and the
%condition variable of the matrix.
con = max_eig/min_eig;
fprintf('\n The maximum eigenvalue of the matrix is %5.5f\n',max_eig);
fprintf('\n The minimum eigenvalue of the matrix is %5.5f\n',min_eig);
fprintf('\n The condition variable of the matrix is %5.5f\n',con);

end