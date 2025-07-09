# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.4.1/typedb-all-mac-arm64-3.4.1.zip"
    sha256 "3ac179f2cb47658998821018aa792600cf5c6c597bc57828a741779f96ec0e84"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.4.1/typedb-all-mac-x86_64-3.4.1.zip"
    sha256 "4b885f58667130b57fde8c5b554558b5b9ec811f890d442b06d1fefb912a3e06"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
