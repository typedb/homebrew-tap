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
  version '2.26.0'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.26.0/typedb-studio-mac-arm64-2.26.0.dmg"
    sha256 "d4efd156c60d0b3439ecb49407b0dcdd55fa886c4c6ca62458f8fac97c81182d"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.26.0/typedb-studio-mac-x86_64-2.26.0.dmg"
    sha256 "4a6772ec63e385c3d3120b7e162dfb9452b2b41a8e61d74b50122582c99042a1"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
