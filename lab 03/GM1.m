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
## @deftypefn {} {@var{retval} =} GM1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-03-05

function [R Q] = GM1 (A)
   [m n]=size(A);
  Q=zeros(m,n);
  R=zeros(n,n);
  for j=1:n
    aux=A(:,j);
    for i=1:j-1
      R(i,j)=Q(:,i)'*A(:,j);
      aux=aux-R(i,j)*Q(:,i);
    end
    %aux=A(:,j)-Q(:,1:j-1)*R(1:j-1,j);
    R(j,j)=norm(aux);
    Q(:,j)=aux/R(j,j);
   end
endfunction