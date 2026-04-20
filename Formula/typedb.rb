# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.0-rc1/typedb-all-mac-arm64-3.10.0-rc1.zip"
    sha256 "0899d6a4f3fe1f17bd5721260a94d0bd4bfa47888f4aa8e4128a7eda951cb616"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.0-rc1/typedb-all-mac-x86_64-3.10.0-rc1.zip"
    sha256 "97afe1f5594259d21f546336a738f4ee860b299f59258dbb9a3cb42542c32b8b"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
