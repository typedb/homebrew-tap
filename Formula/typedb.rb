# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/vaticle/typedb/releases/download/2.28.2-rc1/typedb-all-mac-arm64-2.28.2-rc1.zip"
    sha256 "cc039da54b3bf76cd28014c5829a76f2e7690524f1012640dd85209080ff8d5a"
  end

  on_intel do
    url "https://github.com/vaticle/typedb/releases/download/2.28.2-rc1/typedb-all-mac-x86_64-2.28.2-rc1.zip"
    sha256 "b6fd31983ca52a5295feed03a6fea45906c5285106557ad6801c0d7940d9b09d"
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
