# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.0-rc0/typedb-all-mac-arm64-3.8.0-rc0.zip"
    sha256 "371ecc7fb4bba6036981bcbaa5e7e10023da15053a5f75a29a89d2785415a4e0"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.0-rc0/typedb-all-mac-x86_64-3.8.0-rc0.zip"
    sha256 "9e3724ed356d407611725c75ae5095d509b3133e3048ce3f68bd6f58e7f7c23e"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
