# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.4.0/typedb-all-mac-arm64-3.4.0.zip"
    sha256 "512b3ddb9bd99eb0d16233fd8d2a18db8d1718d229344bb3083b905b3595b9a6"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.4.0/typedb-all-mac-x86_64-3.4.0.zip"
    sha256 "a140adfa262e8042b8c48fa638163540ab7bb6688de7d65e86b95624807cf5c0"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
