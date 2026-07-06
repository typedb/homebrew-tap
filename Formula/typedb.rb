# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.12.0/typedb-all-mac-arm64-3.12.0.zip"
    sha256 "21cf05297845e19d55b9cbe5d425294e0d2cc615af6c2564898b1134c89ed3aa"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.12.0/typedb-all-mac-x86_64-3.12.0.zip"
    sha256 "bf055d00b3844cc8b5896e7ed0f2dd196a9c489b1ab8af0c0d862129e186dabc"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
