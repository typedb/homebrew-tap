# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.3.0-rc0/typedb-all-mac-arm64-3.3.0-rc0.zip"
    sha256 "b11fa85a2f8a7aa449eb90d3ae554be6d466140a8522c9b4863b4958fbf1c929"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.3.0-rc0/typedb-all-mac-x86_64-3.3.0-rc0.zip"
    sha256 "29aa73df40d61f0951fe70ceca8ac3378d80d79c3189404c20310e65bf4506a6"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
