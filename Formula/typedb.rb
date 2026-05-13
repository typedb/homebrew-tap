# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.11.0-rc1/typedb-all-mac-arm64-3.11.0-rc1.zip"
    sha256 "29b1e260aa1285a0cd3cffbf3bf2b7150b9120eb7df8db5859d9e96fd5c2a7d1"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.11.0-rc1/typedb-all-mac-x86_64-3.11.0-rc1.zip"
    sha256 "84d36c804337efa8258a77ec73686a1e170827c2d28b3b295b0626e4de4c42d4"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
