# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.5.1/typedb-all-mac-arm64-3.5.1.zip"
    sha256 "c5f77f5237007cab2c6f4678ee89a92c689aaecb69635d038e7b403f955640a4"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.5.1/typedb-all-mac-x86_64-3.5.1.zip"
    sha256 "048aedbb720ee65ecd3e42e562b04c211faf4ff2967f0ea38c440c4c8d18f492"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
