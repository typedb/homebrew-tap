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
  version '2.25.0'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.0/typedb-studio-mac-arm64-2.25.0.dmg"
    sha256 "193c543990d76f161c82536a6bb9a8e78dc8232205733c12d29701b3f8effcf8"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.0/typedb-studio-mac-x86_64-2.25.0.dmg"
    sha256 "3db50b8304206f8dc059021dec1a1ad627fd487c663cbce5b6523037784d9152"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
