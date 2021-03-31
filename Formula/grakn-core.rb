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

class GraknCore < Formula
  desc "Grakn Core: The Knowledge Graph"
  homepage "https://grakn.ai"
  url "https://github.com/graknlabs/grakn/releases/download/2.0.0/grakn-core-all-mac-2.0.0.zip"
  sha256 "e55e2c2a73170cc734535c3d66f3c9573ebac9ccee3f4d14de3546a305bbf8ee"

  bottle :unneeded

  depends_on "openjdk@11"

  def setup_directory(dir)
    grakn_dir = var / name / dir
    grakn_dir.mkpath
    orig_dir = libexec / "server" / dir
    rm_rf orig_dir
    ln_s grakn_dir, orig_dir
  end

  def install
    libexec.install Dir["*"]
    setup_directory "data"
    setup_directory "logs"
    bin.install libexec / "grakn"
    bin.env_script_all_files(libexec, Language::Java.java_home_env("1.11"))
  end
end
