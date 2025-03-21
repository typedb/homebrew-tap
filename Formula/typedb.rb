# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.1.0-rc0/typedb-all-mac-arm64-3.1.0-rc0.zip"
    sha256 "ced5968493f57c8d82462fe682b5f9ceadd695ed188b68dc2cb3b7f4bb12ea09"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.1.0-rc0/typedb-all-mac-x86_64-3.1.0-rc0.zip"
    sha256 "04cc794e7d2021ad4001680025226b888d6663bd34b27404f8be6ccb4665e72b"
  end

  license "MPL-2.0"

  # TODO: Remove when console no longer requires jre
  depends_on "openjdk"


  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
    # TODO: Remove when console no longer requires jre
    bin.env_script_all_files(libexec, Language::Java.java_home_env)
  end
end
