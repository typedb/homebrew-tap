# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.11.5/typedb-all-mac-arm64-3.11.5.zip"
    sha256 "c077566a151e240d9805e6982f681adcbbcc0d679f83fd8d996573b6e8e675fd"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.11.5/typedb-all-mac-x86_64-3.11.5.zip"
    sha256 "a16a0f60807fb135ce9eecb0da674cfd5175b338436ce3bab213e60c7b65658c"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
