# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/vaticle/typedb/releases/download/2.28.3-rc0/typedb-all-mac-arm64-2.28.3-rc0.zip"
    sha256 "4cc2eefb38caccc5213cf04ad6366087f4c64f1a1590666668e245f91f9a1023"
  end

  on_intel do
    url "https://github.com/vaticle/typedb/releases/download/2.28.3-rc0/typedb-all-mac-x86_64-2.28.3-rc0.zip"
    sha256 "c03ee3a7ebbd733efe0233a45837f57e9d52dfe2d75f80aafb815153f9bafe42"
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
