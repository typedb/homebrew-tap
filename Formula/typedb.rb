# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.1/typedb-all-mac-arm64-3.10.1.zip"
    sha256 "7aecfcaa52d1f907a5f8f0fe5ee2d61a8e32b899a32b6bb2f3a4bcbf04b05dc1"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.1/typedb-all-mac-x86_64-3.10.1.zip"
    sha256 "1b241bc5b12ad2ec1fcd215969119eba687d5093002823668e2aabf6ba842063"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
