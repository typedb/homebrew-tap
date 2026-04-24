# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.10.2/typedb-all-mac-arm64-3.10.2.zip"
    sha256 "eb14c3882ac3989c8c4385abc3f59caa9b4ce533e67bff061c86bb018806f81f"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.10.2/typedb-all-mac-x86_64-3.10.2.zip"
    sha256 "7a599f245aa18ef6620d134bd1b984a7ec8b07519eb1df5d8d3ad971fec1f44b"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
  end
end
