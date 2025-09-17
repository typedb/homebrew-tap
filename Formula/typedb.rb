# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.0/typedb-all-mac-arm64-3.5.0.zip"
    sha256 "58714eaa18fc5d0fc5fd55458e5432665cc2f6ec84954b894541ef7d1a3f9a49"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.0/typedb-all-mac-x86_64-3.5.0.zip"
    sha256 "0df1417430d26fd3dd9cd5234e850fa3878e038ae852d9d68816beabc5951b93"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
