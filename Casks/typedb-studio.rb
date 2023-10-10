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
  version '2.24.14'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.24.14/typedb-studio-mac-arm64-2.24.14.dmg"
    sha256 "8b132cd85540b9048f6e8c216381339fa25344dbc100f02bd7f3a2dc377de89f"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.24.14/typedb-studio-mac-x86_64-2.24.14.dmg"
    sha256 "481e57dc6145199dc0496eb186ae9f7cc1c28eadfcf0cdb15f0bb4f58abfbdfc"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
