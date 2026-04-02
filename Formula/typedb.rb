# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.4-rc0/typedb-all-mac-arm64-3.8.4-rc0.zip"
    sha256 "c24a78b551736e77dd5284cbe83051c75e890c8d8d13dc7fb6266b2381fb64db"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.4-rc0/typedb-all-mac-x86_64-3.8.4-rc0.zip"
    sha256 "de6e78f111283092d35e4d7d1ab5e9ce2603bc824e2fbd168f4ed13dd87110a1"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
