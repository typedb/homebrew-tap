# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.3/typedb-all-mac-arm64-3.10.3.zip"
    sha256 "792c75c4166388ff68d7b9dce7c724284fe29c0ec33fbdc9847c7f6c4930994f"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.3/typedb-all-mac-x86_64-3.10.3.zip"
    sha256 "0f86b9630456cd1ebaf5ac375d433efeb450d05b2c3c9f0d38e7ffdae5499229"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
