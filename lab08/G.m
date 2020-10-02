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
## @deftypefn {} {@var{retval} =} G (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-10

function G(A)
  [n n] = size(A);
  hold on;
  
  [vecp valp] = eig(A);
  
  for i = 1 : n
    sum = 0;
    for j = 1: n
      if i ~= j
        sum = sum + A(i,j); 
      endif
    endfor
    draw(sum, A(i,i), 0);
    plot(real(valp(i,i)), imag(valp(i,i)), 'MarkerSize', 20);
  endfor
  hold off;
endfunction
