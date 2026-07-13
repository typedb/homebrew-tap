# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.12.1/typedb-all-mac-arm64-3.12.1.zip"
    sha256 "0e146d069473223d5d2523cdf0e889738f73cd2ae8d532bdf611d2f200ae6c9f"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.12.1/typedb-all-mac-x86_64-3.12.1.zip"
    sha256 "ed0e49f69386514e0b5647c7292a6734cacef211b6c671c38842ff2a2fb16777"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
