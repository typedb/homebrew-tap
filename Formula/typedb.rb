# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.8.2/typedb-all-mac-arm64-3.8.2.zip"
    sha256 "8c064800111ab219273d743674d45ef5c0f11d4d22bb2a30213a863d1b84f30a"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.8.2/typedb-all-mac-x86_64-3.8.2.zip"
    sha256 "72066120ba97a5a7f38275ccc46b77547d0d30f005d7807715c48f9bf54e2fb9"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
