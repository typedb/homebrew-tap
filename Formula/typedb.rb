# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.4.0-rc0/typedb-all-mac-arm64-3.4.0-rc0.zip"
    sha256 "19a966bc7e7175bc2814cb632e6d006120aa2f3d4eb8771fbe5e15d06ef03216"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.4.0-rc0/typedb-all-mac-x86_64-3.4.0-rc0.zip"
    sha256 "551b27cb5494440c08249764dfe3651ae7c606ed367a045d67b98f30adc53d0e"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
