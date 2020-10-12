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
## @deftypefn {} {@var{retval} =} spline_liniar (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-24

function val= spline_liniar (c,x,y)
  n=length(x);
  for i=1:n-1
    if c >= x(i) && c<=x(i+1)
      a_i= (y(i+1)-y(i))/(x(i+1)-x(i));
      b_i=((x(i+1)*y(i))-(x(i)*y(i+1)))/(x(i+1)-x(i));
      val=a_i *c+b_i;
    end
  end
endfunction
