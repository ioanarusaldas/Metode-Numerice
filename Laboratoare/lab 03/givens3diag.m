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

function [Q R b] = givensSH(A, b)
 [m n] = size(A);
 Q = eye(m);

 for k = 1 : n-1
 %for l = k + 1 : m
 l = k + 1;
 r = sqrt(A(k,k)^2 + A(l,k)^2);
 c = A(k,k)/r;
 s = -A(l,k)/r;
 t=[c -s;s c]*[A(k,k:min(n,k+2));A(l,k:min(n,k+2))];
 A(k,k:min(n,k+2))=t(1,:);
 A(l,k:min(n,k+2))=t(2,:);
 u=[c -s;s c]*[b(k);b(l)];
 b(l) = u(1);
 b(k) = u(2);
 t=[c -s;s c]*[Q(k,1:m);Q(l,1:m)];
 Q(k,1:m)=t(1,:);
 Q(l,1:m)=t(2,:);
 end

 Q = Q';
 R = A;
end
