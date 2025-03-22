# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.1.0-rc1/typedb-all-mac-arm64-3.1.0-rc1.zip"
    sha256 "b31aab44f2134fdbf4b8bb0f91057e6b2e45294d19aa8c97bd4e769438d1e174"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.1.0-rc1/typedb-all-mac-x86_64-3.1.0-rc1.zip"
    sha256 "9737b4b1f262f776c56bc5ae754522ebe51ff2a7e4ec3714e3f047b3cdcc043d"
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
