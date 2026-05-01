# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.4/typedb-all-mac-arm64-3.10.4.zip"
    sha256 "4d478aa46627d87d205c09159ada621d6e4fcceaf6b37613f09413c901863632"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.4/typedb-all-mac-x86_64-3.10.4.zip"
    sha256 "4b178231fb9db9968c69aaae12a2dfa22e360a08b9aadbd79dfc27791bd9a6bc"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
