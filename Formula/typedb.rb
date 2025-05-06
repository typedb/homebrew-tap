# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.2.0/typedb-all-mac-arm64-3.2.0.zip"
    sha256 "8f6a5a79373c1a6103f3a910ba5cb5ffb071a9997a18250686d9e1d7323a4884"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.2.0/typedb-all-mac-x86_64-3.2.0.zip"
    sha256 "b8d75187995d53900431ee0979d1f7b8b1c666b8f7bef60d9966dc466d0f3289"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
