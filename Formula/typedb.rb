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

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/vaticle/typedb/releases/download/2.27.0/typedb-all-mac-arm64-2.27.0.zip"
    sha256 "8952df18936960b2705af0f12042edb4a79ea7a309b40c3721065edd651df17b"
  end

  on_intel do
    url "https://github.com/vaticle/typedb/releases/download/2.27.0/typedb-all-mac-x86_64-2.27.0.zip"
    sha256 "7e40cd4ee3c0bdf5476a0e9d85bd01300867524e2f01867436c78d6d2c9011dd"
  end

  license "AGPL-3.0-or-later"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    mkdir_p var/"typedb/data"
    inreplace libexec/"server/conf/config.yml", "server/data", var/"typedb/data"
    mkdir_p var/"typedb/logs"
    inreplace libexec/"server/conf/config.yml", "server/logs", var/"typedb/logs"
    bin.install libexec / "typedb"
    bin.env_script_all_files(libexec, Language::Java.java_home_env)
  end
end
