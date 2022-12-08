#
# Copyright (C) 2022 Vaticle
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

cask 'typedb-studio' do
  version '2.14.2'
  sha256 '620f899a44f9cac742954d2a8ee285c4a913adae77083a8401c0f46bcae05849'

  url "https://github.com/vaticle/typedb-studio/releases/download/2.14.2/typedb-studio-mac-2.14.2.dmg"
  name 'TypeDB Studio'
  homepage 'https://vaticle.com'

  app "TypeDB Studio.app"

end
