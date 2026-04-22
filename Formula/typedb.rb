# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.0-rc3/typedb-all-mac-arm64-3.10.0-rc3.zip"
    sha256 "c3fb6a23ae7d477b5950492b0533f3451bf0a1d2ad7c1f75a5cf9c044c889f7b"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.0-rc3/typedb-all-mac-x86_64-3.10.0-rc3.zip"
    sha256 "0a761aeec8304ebe0b62a2931770121ff7d0a7bee6e727328e2118ad39547a4b"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
