# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/typedb/typedb/releases/download/2.29.0/typedb-all-mac-arm64-2.29.0.zip"
    sha256 "298372f1d8c4a9e948f4516510e9eec2df55b38eef061e8e4567a53c64c8fea4"
  end

  on_intel do
    url "https://github.com/typedb/typedb/releases/download/2.29.0/typedb-all-mac-x86_64-2.29.0.zip"
    sha256 "8018217eca395c3e322e45ae8126089b827dfcd88ada6b0db47e44564ed77f9a"
  end

  license "MPL-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    mkdir_p var/"typedb/data"
    inreplace libexec/"server/conf/config.yml", "server/data", var/"typedb/data"
    mkdir_p var/"typedb/logs"
    inreplace libexec/"server/conf/config.yml", "server/logs", var/"typedb/logs"
    bin.install libexec / "typedb"
    bin.env_script_all_files(libexec, Language::Java.java_home_env)
  end
end
