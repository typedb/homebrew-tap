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
  version '2.25.10'

  on_arm do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.10/typedb-studio-mac-arm64-2.25.10.dmg"
    sha256 "b29ca49f066467e99f9676f7805a30408ffa02bc0566335d64ce46056bae652c"
  end

  on_intel do
    url "https://github.com/vaticle/typedb-studio/releases/download/2.25.10/typedb-studio-mac-x86_64-2.25.10.dmg"
    sha256 "7bea5d3fabcb81ba17c4f733ff4d4527e53c89bd6770213bc89261a19cf41749"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
