! This file is part of xtb.
!
! Copyright (C) 2017-2020 Stefan Grimme
!
! xtb is free software: you can redistribute it and/or modify it under
! the terms of the GNU Lesser General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.
!
! xtb is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU Lesser General Public License for more details.
!
! You should have received a copy of the GNU Lesser General Public License
! along with xtb.  If not, see <https://www.gnu.org/licenses/>.

integer function ifind(x,n,xx)
   implicit none
   integer n
   real*8 x,xx(n),mind
   integer i,mem

   mind=1.d+42
   do i=1,n
      if(abs(x-xx(i)).lt.mind)then
         mind=abs(x-xx(i))
         mem=i
      endif
   enddo
   ifind = mem

end function ifind
