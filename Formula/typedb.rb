# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.0-rc0/typedb-all-mac-arm64-3.5.0-rc0.zip"
    sha256 "b591d22bc56f10e63937a21b0b88de545f9d6137810666493137a36e2459ed99"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.0-rc0/typedb-all-mac-x86_64-3.5.0-rc0.zip"
    sha256 "ae9ce78a736ce3d97edf65ca77d91f57a4aca72c02cb5b139bbcd85745a70d95"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
