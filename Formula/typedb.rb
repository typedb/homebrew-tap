# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.0-rc2/typedb-all-mac-arm64-3.10.0-rc2.zip"
    sha256 "8073274f59459259b49a36b46d37ba6925e1c8e49d8bdaf7593e3cd0d5c440b1"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.0-rc2/typedb-all-mac-x86_64-3.10.0-rc2.zip"
    sha256 "1a11842d7a1429ca18dfdfb0faf4cdb22de1dff6aceb0aef109bb6b4badc694d"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
