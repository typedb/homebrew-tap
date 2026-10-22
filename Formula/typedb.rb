# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"
  version "3.14.1"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.14.1/typedb-all-mac-arm64-3.14.1.zip"
    sha256 "7b73bada88e457cfcb76e26f4378b8062722857ab5896dab76e1b1cdf9f48997"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.14.1/typedb-all-mac-x86_64-3.14.1.zip"
    sha256 "4c98b39e50c2f9437ab6dffb2646f94d5c5ef1e6a5e8a033aac48831482dd389"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "typedb"
    mkdir_p var/"typedb/data"
    inreplace libexec/"server/config.yml", "data-directory: \"data\"", "data-directory: \"#{var}/typedb/data\""
    mkdir_p var/"typedb/logs"
    inreplace libexec/"server/config.yml", "directory: \"logs\"", "directory: \"#{var}/typedb/logs\""
  end

end
