#
# Copyright (C) 2021 Vaticle
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

cask 'typedb-workbase' do
  version '2.1.1'
  sha256 '589c92667cf34846e96a779f205dc53ae4c550d36d356546010ab4483f0a71b4'

  url "https://github.com/vaticle/typedb-workbase/releases/download/2.1.1/typedb-workbase-mac-2.1.1.dmg"
  name 'TypeDB Workbase'
  homepage 'https://vaticle.com'

  app "TypeDB Workbase.app"

end
