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
## @deftypefn {} {@var{retval} =} Householder(A,b) (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-03-20

function [Q R x] = householder1(A, b)
  [m n] = size(A);
  Q = eye(m);
  
  for p = 1: min(m-1, n)
    sigma = -norm(A(p:m, p));
    if A(p,p)<0
      sigma = -sigma;
    endif
    vp = zeros(m,1);
    vp(p) = A(p,p) + sigma;
    vp(p+1:m) = A(p+1:m, p);
    beta = vp(p) * sigma;
    %Hpap
    A(p,p) = -sigma;
    A(p+1:m, p) = 0;
    for j = p+1:n
      t = (vp(p:m)'*A(p:m, j))/beta;
      A(p:m, j) = A(p:m, j) - t *vp(p:m);
    endfor
    t = (vp(p:m)'*b(p:m))/beta;
    b(p:m) = b(p:m) - t*vp(p:m);
    for j =1:m
      t = (vp(p:m)'*Q(p:m, j))/beta;
      Q(p:m, j) = Q(p:m, j) - t*vp(p:m);
    endfor
  endfor
  R = A;
  Q = Q';
  x = SST(A,b);
endfunction