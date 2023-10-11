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
  version '2.24.15'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.24.15/typedb-studio-mac-arm64-2.24.15.dmg"
    sha256 "cc77f79660a56b4c5e27e65dff4c42b8cf02d90cc132fdc4531133a06a757810"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.24.15/typedb-studio-mac-x86_64-2.24.15.dmg"
    sha256 "63201f2854312671b100ae8310279cdee879a22f301b57b89ce59ee63568428e"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
