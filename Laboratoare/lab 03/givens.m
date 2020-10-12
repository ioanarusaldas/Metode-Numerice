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
## @deftypefn {} {@var{retval} =} givens (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-03-05

function [Q R b] = givens(A, b)
[m n] = size(A);
 G = eye(m);
 for k = 1 : n-1
 for l = k + 1 : m
 r = sqrt(A(k,k)^2 + A(l,k)^2);
 c = A(k,k)/r;
 s = -A(l,k)/r;
 t = c*A(k,k:n) - s*A(l,k:n);
 A(l,k:n) = s*A(k,k:n) + c*A(l,k:n);
 A(k,k:n) = t;
 u = c*b(k) - s*b(l);
 b(l) = s*b(k) + c*b(l);
 b(k) = u;
 t = c*G(k,1:m) - s*G(l,1:m);
 G(l,1:m) = s*G(k, 1:m) + c*G(l,1:m);
 G(k,1:m) = t;
 end
 end
 Q = G';
 R = A;
endfunction
