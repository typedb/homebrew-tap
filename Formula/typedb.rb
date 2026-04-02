# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.4-rc1/typedb-all-mac-arm64-3.8.4-rc1.zip"
    sha256 "96f8b98af1cbc262689f9953c036309091dd265375049e1fca3ce67adfbad6b4"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.4-rc1/typedb-all-mac-x86_64-3.8.4-rc1.zip"
    sha256 "c8cd0cd237947d5d5e0d362c69b7604b4e411c4baaf0105dfd50c7290e7c9b4b"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
