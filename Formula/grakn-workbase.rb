#
# Copyright (C) 2021 Grakn Labs
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

cask 'grakn-workbase' do
  version '2.0.0-alpha-3'
  sha256 'f1585ea355b32ee9fc1f3dcc07904fd3db343033fa30c4d2c352cbecd27b9bfd'

  url "https://github.com/graknlabs/workbase/releases/download/2.0.0-alpha-3/grakn-workbase-mac-2.0.0-alpha-3.dmg"
  name 'Grakn Workbase'
  homepage 'https://grakn.ai/'

  app "Grakn Workbase.app"

end
