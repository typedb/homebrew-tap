# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.2.0-rc0/typedb-all-mac-arm64-3.2.0-rc0.zip"
    sha256 "81be91c04653f04e500188c260604783aed32af420f62fa0afc0a7945fecb15b"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.2.0-rc0/typedb-all-mac-x86_64-3.2.0-rc0.zip"
    sha256 "d427eaf9a60c6c79fc193028bd1b1feed4524a034f905b6ba0e3792b354b0662"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
