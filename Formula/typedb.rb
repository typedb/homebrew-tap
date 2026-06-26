# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.12.0-rc2/typedb-all-mac-arm64-3.12.0-rc2.zip"
    sha256 "0ef3fee220b7495ffbcce73a6b84612d08b55a2a69c0a043e24a4b7e221a9a5b"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.12.0-rc2/typedb-all-mac-x86_64-3.12.0-rc2.zip"
    sha256 "e91ec70f838f6fff46384978aca7650f4e78fd0854fca8a6d1a2191856e0721c"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
