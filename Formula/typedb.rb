# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.4/typedb-all-mac-arm64-3.5.4.zip"
    sha256 "fa0975933982dd2e70dce798b2222c39d5088668b0c0a9bb141815c5f4681652"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.4/typedb-all-mac-x86_64-3.5.4.zip"
    sha256 "b46eb9db196607a4a4fcde36afdf98b25394860cb33b60a12c37d90bf0d3b6be"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
