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
  version '2.26.6'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.26.6/typedb-studio-mac-arm64-2.26.6.dmg"
    sha256 "cd2432588f7cb8e8d38b67d2ba474aa102e431203a6a81bfe845ac25c6f5cc63"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.26.6/typedb-studio-mac-x86_64-2.26.6.dmg"
    sha256 "1d7f1081476e3b92a8bf3cdebabf3e0003b2009c11915d2453c4daa378789819"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
