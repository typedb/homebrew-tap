# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.0-rc0/typedb-all-mac-arm64-3.10.0-rc0.zip"
    sha256 "230ee64f68fe5ab76fce847531df1ede022bb6fa3c6e2522e6783b87530e6152"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.0-rc0/typedb-all-mac-x86_64-3.10.0-rc0.zip"
    sha256 "4ad5225282b6c1e6bdc6694f086dd4cc2be0188196978f04086c47dacdc32bcc"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
