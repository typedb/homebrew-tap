#
# Copyright (C) 2021 Vaticle
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
  version '2.10.0-alpha-6'
  sha256 '80ccb63a6a820195ff81df3dcc8ac14b4aad095fd8d01da3e244397c6d34dfc5'

  url "https://github.com/vaticle/typedb-studio/releases/download/2.10.0-alpha-6/typedb-studio-mac-2.10.0-alpha-6.dmg"
  name 'TypeDB Studio'
  homepage 'https://vaticle.com'

  app "TypeDB Studio.app"

end
