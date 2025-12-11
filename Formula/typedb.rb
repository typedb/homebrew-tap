# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.7.1/typedb-all-mac-arm64-3.7.1.zip"
    sha256 "08dce6e92cbdf28c0899c3d18684e635bf3c671d30a77bbba2e746b0384714da"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.7.1/typedb-all-mac-x86_64-3.7.1.zip"
    sha256 "b5412c9c968db1e4dd3cf5ae613400f4733a500968a8141928dd9e1343ae2951"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
