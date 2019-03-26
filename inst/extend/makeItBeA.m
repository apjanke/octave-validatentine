## Copyright (C) 2019 Andrew Janke
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {Function File} {@code{out} = } makeItBeA (@code{x}, @code{type})
##
## Converts input to given type if it is not one already.
##
## Ensures that the input @code{x} is of the given type @code{type}. If it is 
## not already that type (as indicated by @code{isa (x, type)}), it is converted
## by calling the one-argument constructor or conversion function for @code{type}.
## (The conversion function is assumed to be the global function with that
## exact name. Callers are responsible for making good choices with @code{type}
## here.)
##
## @end deftypefn

function x = makeItBeA (x, type)
  if ! isa (x, type)
    x = feval (type, x);
  endif
endfunction