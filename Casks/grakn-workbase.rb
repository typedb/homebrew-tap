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
  version '2.0.2'
  sha256 '483a0a3cb2dfa859b0a400751ba120c737cf1a2021059a0a2dd899f6c43b8ba4'

  url "https://github.com/graknlabs/workbase/releases/download/2.0.2/grakn-workbase-mac-2.0.2.dmg"
  name 'Grakn Workbase'
  homepage 'https://grakn.ai/'

  app "Grakn Workbase.app"

end
