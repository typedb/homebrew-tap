# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.7.0-rc0/typedb-all-mac-arm64-3.7.0-rc0.zip"
    sha256 "4b45445c8af8cad8a6be864451c5ffcb33e8b040b6bfc1c811f9612d48b7b9ee"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.7.0-rc0/typedb-all-mac-x86_64-3.7.0-rc0.zip"
    sha256 "8d2d745afaede727e9e09216951dc03e3daa7c3ad973216cfb2ef29cf6fbdbcd"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
