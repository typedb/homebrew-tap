# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.7.0/typedb-all-mac-arm64-3.7.0.zip"
    sha256 "9e7477aa76efff80b66620fee93800ecca60aae9a24372d2654cb1073bd4cfba"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.7.0/typedb-all-mac-x86_64-3.7.0.zip"
    sha256 "2a26ac2801cacbd5ecf1c9b549d246d9dc1da6ca6d622a95ab13b656d7fc854c"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
