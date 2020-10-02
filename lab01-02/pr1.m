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
## @deftypefn {} {@var{retval} =} pr1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn
## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-02-26

function [L U] = crout(A)
 [n n] = size(A);
 L = zeros(n);
 U = eye(n);
 L(1:n,1) = A(1:n,1);

 for p = 1 : n
 for i = p : n
 s = 0;
 for k = 1 : p-1
 s = s+L(i,k)*U(k,p);
 endfor

 % echivalent pentru calculul sumei
 % s = L(i,1:k-1)*U(1:k-1,k
 L(i,p) = A(i,p)-s;
 endfor

 for j = p+1 : n
 % --------------------------------
 s = 0;
 for k = 1 : p-1
 s = s+L(p,k)*U(k,j);
 endfor

 % echivalent pentru calculul sumei
 % s = L(k,1:k-1)*U(1:k-1,j);

 U(p,j) = (A(p,j)-s)/L(p,p);
 endfor
 endfor
 endfunction

