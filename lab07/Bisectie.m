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
## @deftypefn {} {@var{retval} =} Bisectie (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-04-03

function x = Bisectie (a,b,f,tol)
  if (f(a)*f(b) > 0)
    error("ecuatia nu are solutii [%d %d]",a,b);
  end
  %x=a+(b-a)/2;
  x=a-(b-a)/(f(b)-f(a))*f(a);
  if abs(f(x))>tol && abs(b-a)>tol
  if f(a)*f(x)<0
    b=x;
  else
    a=x;
  end
  x=Bisectie(a,b,f,tol);
end
endfunction
