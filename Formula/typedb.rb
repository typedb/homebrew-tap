# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.4-rc2/typedb-all-mac-arm64-3.8.4-rc2.zip"
    sha256 "5a5f0020eb9706843a9c4e22dc6ff60470affa867e264feadca92931dd7e43a3"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.4-rc2/typedb-all-mac-x86_64-3.8.4-rc2.zip"
    sha256 "609ac4a5e0957be2d3d4c98fd92aefd6529f36c372e0d861cb136765ab4e2cbe"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
