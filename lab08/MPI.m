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
## @deftypefn {} {@var{retval} =} MPI (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-10

function [lambda, x0, iter] = MID(x0,A, tol, maxiter,miu)
  iter = maxiter;
  [n,n]=size(A);
  I=eye(n);
  while iter
    iter--;
    %z = A*x0;
    z=(A-miu*I)\x0
    x0 = z/norm(z);
    lambda = x0'*A*x0;
    if(A*x0 - lambda*x0 < tol)
      break;
    endif
    
  endwhile
endfunction