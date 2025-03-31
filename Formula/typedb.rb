# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.1.0-rc2/typedb-all-mac-arm64-3.1.0-rc2.zip"
    sha256 "c214cae6ddefd307c5f2105e056370bc628472849dabde6008b8e87f02e85bc7"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.1.0-rc2/typedb-all-mac-x86_64-3.1.0-rc2.zip"
    sha256 "7bc7f252d0a5816cfbb27ea1b2797cccdf4b4521b75e82fdd54f9fae670d5423"
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
