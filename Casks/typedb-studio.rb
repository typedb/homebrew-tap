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
  version '2.25.9'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.9/typedb-studio-mac-arm64-2.25.9.dmg"
    sha256 "f6321a2ae21b3861aa370c58b60f09aa9c3318fe2005a710129822c4d0c92fc8"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.9/typedb-studio-mac-x86_64-2.25.9.dmg"
    sha256 "00dd766404ebf7a8b8746d50800a7d91bd6570333e690be31951120059ff1bd1"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
