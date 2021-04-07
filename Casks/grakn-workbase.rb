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
  version '2.0.1'
  sha256 '550e60ff002e097fff4ade4737c06b2fb5a69f50d5cc9c3c7a23e0eb0dd1c374'

  url "https://github.com/graknlabs/workbase/releases/download/2.0.1/grakn-workbase-mac-2.0.1.dmg"
  name 'Grakn Workbase'
  homepage 'https://grakn.ai/'

  app "Grakn Workbase.app"

end
