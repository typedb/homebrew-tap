# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.3/typedb-all-mac-arm64-3.8.3.zip"
    sha256 "efb2cdb6a553b4ce613340a542ae7ba09409a37c0e093a9fe783e1e0fe4d223e"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.3/typedb-all-mac-x86_64-3.8.3.zip"
    sha256 "95c51f13ee082673d2b307319c01b0cd0a430aa8a58aeaafee7582ac35c1dbe5"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
