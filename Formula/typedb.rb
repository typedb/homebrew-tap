# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.4.4/typedb-all-mac-arm64-3.4.4.zip"
    sha256 "14a1272d6a9b3ced73f1bb04278dee8062511251ebf8766e570309309665ea65"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.4.4/typedb-all-mac-x86_64-3.4.4.zip"
    sha256 "0cf4d839ae6e8687e0ad649dd95e76f2447d12b76172dd02e125287aa818cb54"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
