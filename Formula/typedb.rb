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

class Typedb < Formula
  desc "TypeDB: a strongly-typed database"
  homepage "https://vaticle.com"
  url "https://github.com/vaticle/typedb/releases/download/2.7.0/typedb-all-mac-2.7.0.zip"
  sha256 "3a74ab0b36aed46e88f50d41ed317141d207471f7873348eef88ad4ead88decd"

  depends_on "openjdk@11"

  def setup_directory(dir)
    typedb_dir = var / name / dir
    typedb_dir.mkpath
    orig_dir = libexec / "server" / dir
    rm_rf orig_dir
    ln_s typedb_dir, orig_dir
  end

  def install
    libexec.install Dir["*"]
    setup_directory "data"
    setup_directory "logs"
    bin.install libexec / "typedb"
    bin.env_script_all_files(libexec, Language::Java.java_home_env("1.11"))
  end
end
