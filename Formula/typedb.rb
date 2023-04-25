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
  desc "Strongly-typed database with a rich and logical type system"
  homepage "https://vaticle.com"
  url "https://github.com/vaticle/typedb/releases/download/2.17.0/typedb-all-mac-2.17.0.zip"
  sha256 "c11fe0f9b175dc4bbec06e3d6a515aeb62b2adb70bcfc9fe038351efa9900423"
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
