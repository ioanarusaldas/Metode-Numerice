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
## @deftypefn {} {@var{retval} =} cholesky (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: BigBoss <BigBoss@DESKTOP-S06E19J>
## Created: 2019-03-05
function L = cholesky(A)
	[n n] = size(A);
	L = zeros(n);

	for i = 1 : n
		for j = 1 : i-1
			s = 0;
			for k = 1 : j-1
				s = s+L(i,k)*L(j,k);
			endfor
			L(i,j) = (A(i,j)-s)/L(j,j);
		endfor

		s = 0;
		for k = 1 : i-1
			s = s + L(i,k)*L(i,k);
		endfor
		L(i,i) = sqrt(A(i,i)-s);
	endfor
endfunction