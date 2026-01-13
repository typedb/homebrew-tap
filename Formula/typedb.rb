# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.7.3/typedb-all-mac-arm64-3.7.3.zip"
    sha256 "ec8362e4b22b4efaa93f837b9e50900167daa531fc90ebea0ff7c1c721db91e0"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.7.3/typedb-all-mac-x86_64-3.7.3.zip"
    sha256 "5c73253947f77988105f0a0215e1187ed90622b9f5630a6124b664c83cf5a182"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
