# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.7.2/typedb-all-mac-arm64-3.7.2.zip"
    sha256 "5b83b01b38181e7f2b506d2d4435221afff7af40f77955601f7501690d5e1a25"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.7.2/typedb-all-mac-x86_64-3.7.2.zip"
    sha256 "f65b91d3a0f6aae85673a773d44dd263ecd99902e404ca1f20afdea36d35611e"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
