# Copyright 2013 Andrey Sitnik <andrey@sitnik.ru>,
# sponsored by Evil Martians.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http:#www.gnu.org/licenses/>.

Declaration = require('../declaration')

class BorderImage extends Declaration
  @names = ['border-image']

  # Remove fill parameter for prefixed declarations
  prefixProp: (prefix) ->
    return if @rule.contain(prefix + @unprefixed)
    value = @value.replace(/\s+fill(\s)/, '$1')
    @insertBefore(prefix + @unprefixed, value)

module.exports = BorderImage
