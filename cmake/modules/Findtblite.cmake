# This file is part of xtb.
# SPDX-Identifier: LGPL-3.0-or-later
#
# xtb is free software: you can redistribute it and/or modify it under
# the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# xtb is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with xtb.  If not, see <https://www.gnu.org/licenses/>.

set(_lib "tblite")
set(_pkg "TBLITE")
set(_url "https://github.com/tblite/tblite")
set(_rev "v0.4.0")

if(NOT DEFINED "${_pkg}_FIND_METHOD")
   set("${_pkg}_FIND_METHOD" "cmake" "pkgconf" "subproject" "fetch")
   set("_${_pkg}_FIND_METHOD")
endif()

include("${CMAKE_CURRENT_LIST_DIR}/xtb-utils.cmake")

xtb_find_package("${_lib}" "${${_pkg}_FIND_METHOD}" "${_url}" "${_rev}")

unset(_lib)
unset(_pkg)
unset(_url)
unset(_rev)
