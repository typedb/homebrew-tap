# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.0.6/typedb-all-mac-arm64-3.0.6.zip"
    sha256 "9cb5b3713f8d5407ceee26b9f9cd7bf3359b30a6b482ebce6b67d1ae5df42ac2"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.0.6/typedb-all-mac-x86_64-3.0.6.zip"
    sha256 "180ee968ec4abbd9aabb3c3a7a48c133e71beb1999677e6c5c5e5a46bf406f73"
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
