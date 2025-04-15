# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.2.0-rc1/typedb-all-mac-arm64-3.2.0-rc1.zip"
    sha256 "ff9e9e0a06ca3b3fdcdc3b9eb4450b3dc4ec0603d26dd6aa60635f36897d10bb"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.2.0-rc1/typedb-all-mac-x86_64-3.2.0-rc1.zip"
    sha256 "915b07ba0f5db2dce963ec3586edc7c707c1004573150c624abbc7a3b2d3832b"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
