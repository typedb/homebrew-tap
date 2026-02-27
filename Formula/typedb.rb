# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.1/typedb-all-mac-arm64-3.8.1.zip"
    sha256 "38ec12ff0283cda4dcb49a8d6de21b9ce533b7856e0df04d3cb977581cadf378"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.1/typedb-all-mac-x86_64-3.8.1.zip"
    sha256 "23c737938af2b5d3c42d1c08c960404c7317fc31943c9bf52df3444f4d5b0c02"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
