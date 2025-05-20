# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.3.0/typedb-all-mac-arm64-3.3.0.zip"
    sha256 "24b82230dca5a451e34877776b9c159478d81e2b01114998bc6261bc8234dad2"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.3.0/typedb-all-mac-x86_64-3.3.0.zip"
    sha256 "679d3f3cad5ba4f4f9c562a4767f90a6abdd04776265c4b2e2ab1d11b568ebcb"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
