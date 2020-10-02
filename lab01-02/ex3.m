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
## @deftypefn {} {@var{retval} =} ex3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-02-20

function 
file=input('Introduceti numele fisierului');
fid=fopen(file,'r')
v=dlmread('matrice.txt')
p=sum(diag(v));
s=sum(diag(v'));
for i=1:1:3
  l=v(i,1);
  sum1(i)=sum(l);
 end
 j=4;
 for i=1:1:3
  c=v(1,i);
  sum1(j)=sum(c);
 j= j+1;
end
j=j+1;
sum1(j)=p;
sum(j+1)=s;
for i=1:1:j
  if sum1(i) != sum1(i+1)
    disp('nu e magic')
  end
end


endfunction
