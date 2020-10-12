## Copyright (C) 2019 BigBoss
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} lab8 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-17

function [valp iter] = lab8(A, tol, maxIter)
[n n] = size(A);
iter = maxIter;
valp = zeros(n,1);
while maxIter > 0
  maxIter--;
[Q R] = givens(A);
A = R * Q;
if abs(A(2,1)) < tol
  valp(n) = A(1,1);
 A = A(2:n,2:n);
n--;
else if abs(A(n,n-1)) < tol
  valp(n) = A(n,n);
  A = A(1:n-1, 1:n-1);
  n--;
endif
endif
  if n == 1
    valp(n) = A(n,n);
    break;
  endif
endwhile
  iter = iter - maxIter;
  for i=1:length(valp)
    MPI(x0,A, tol, maxiter,miu)
endfunction
