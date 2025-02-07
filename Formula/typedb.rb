# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.0.5/typedb-all-mac-arm64-3.0.5.zip"
    sha256 "a363b70ebd1dce6d1c6d0c4e22289e89b64567575596b91ceba5ec57289f8146"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.0.5/typedb-all-mac-x86_64-3.0.5.zip"
    sha256 "90b4bc4edc7dca60b3668c53cf8982b58eac25d80e48b1f5ee3b5be948366502"
  end

  license "MPL-2.0"

  depends_on "openjdk"


  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
    bin.env_script_all_files(libexec, Language::Java.java_home_env)
  end
end
