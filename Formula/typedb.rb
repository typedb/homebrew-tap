# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.5/typedb-all-mac-arm64-3.5.5.zip"
    sha256 "5d3fd82711cc2509744c860c35b66f0913973979e98089b9665bdb1f9046cded"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.5/typedb-all-mac-x86_64-3.5.5.zip"
    sha256 "941feba02b5d4c627edfd7c5e964f49d23ec637c5f133822ca74378f95d06859"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
