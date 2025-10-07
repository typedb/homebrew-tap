# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.2/typedb-all-mac-arm64-3.5.2.zip"
    sha256 "ff5055da85ae3e00f4530305e97cea5884982bc56c54aa9e08b44b55164d3bfe"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.2/typedb-all-mac-x86_64-3.5.2.zip"
    sha256 "25d0a70bd721c3bda218061a1a331aeb38cf804ec286ac0b56dc01ec0e3047ef"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
