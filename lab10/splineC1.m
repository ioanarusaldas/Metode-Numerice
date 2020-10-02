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
## @deftypefn {} {@var{retval} =} splineC1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-24

function val = splineC1 (c,x,y,dy)
  n=length(x);
  for i=1:n-1
    h_i=x(i+1)-x(i);
    if c >= x(i) && c<=x(i+1)
      a_i= y(i);
      b_i=y(i)+((h_i/3)*dy(i));
      c_i=y(i+1)-((h_i/3)*dy(i+1));
      d_i=y(i+1);
      t=(c-x(i))/h_i;
      val(i) = a_i * (1-t)^3 + b_i * 3 * t * (1-t)^2 + c_i * 3 * t * t * (1-t) +d_i * t^3;
    end
  end

endfunction
