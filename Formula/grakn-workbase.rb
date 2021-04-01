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
  version '2.0.0'
  sha256 '5761fbbba0e89de2a3294f6e02191f12d352f355d040efd1ce6f4c2773bb19b0'

  url "https://github.com/graknlabs/workbase/releases/download/2.0.0/grakn-workbase-mac-2.0.0.dmg"
  name 'Grakn Workbase'
  homepage 'https://grakn.ai/'

  app "Grakn Workbase.app"

end
