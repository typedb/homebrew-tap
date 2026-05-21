# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.11.1/typedb-all-mac-arm64-3.11.1.zip"
    sha256 "4a0afa8ea0d10dca97ff595ce5d4daa78d2347645307a7b9677975b7cf7d0b33"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.11.1/typedb-all-mac-x86_64-3.11.1.zip"
    sha256 "af033dc8a79f6805c427106057f89f860025c5ca133e0a28151a463a13110997"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
