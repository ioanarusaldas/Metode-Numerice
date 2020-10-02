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
## @deftypefn {} {@var{retval} =} inv (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-02-27
function inver=inversa()
  

  
  A1 = [4 0 0;0 0 2; 0 1 2];
  A2 = [1 0 0];
  A3 = [0;0;0];
  A4 = [1];
  
 
  X1 = inv (A1 - A3*inv(A4)*A2);
  X2 = -inv(A4)*A2*X1;
  X4 = inv(A4-A2*inv(A1)*A3);
  X3 = -inv(A1)*A3*X4;
  
  
  inver = [X1 X3; X2 X4]
  
  
endfunction