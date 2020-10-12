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
## @deftypefn {} {@var{retval} =} GPP_SH (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-03-20

function [A b] = GPP_SH(A, b)
  [n n] = size(A);
  for p = 1 : (n - 1)
    pivot = -inf;
    linie_pivot = -1;
    
    for i = p : p+1
      if pivot < abs(A(i , p));
        pivot = abs(A(i , p));
        linie_pivot = i;
      endif
    endfor
    
    if p ~= linie_pivot 
      for j = p : n
        t = A(p , j);
        A(p , j) = A(linie_pivot , j);
        A(linie_pivot , j) = t;
      endfor
      t = b(linie_pivot);
      b(linie_pivot) = b(p);
      b(p) = t;
    endif
   for i = (p + 1) 
      if A(p , p) == 0
        continue;
      endif
      
      tp = A(i , p)/A(p , p);
      A(i , p) = 0;
      for j = (p + 1) : n
      A(i , j) = A(i , j) - tp*A(p , j);
      endfor
      
      b(i) = b(i) - tp*b(p);
    endfor
  endfor
endfunction