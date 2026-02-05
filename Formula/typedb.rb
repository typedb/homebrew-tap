# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.0/typedb-all-mac-arm64-3.8.0.zip"
    sha256 "640d3923e3b131b07024a054c42f3e7703e20551c49ff2a1b1b07d0a250164dc"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.0/typedb-all-mac-x86_64-3.8.0.zip"
    sha256 "1503e518bdde7db3ba324ad56dd32d8cbdeefa1929fe86f83d9903ebaa23c9f7"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
