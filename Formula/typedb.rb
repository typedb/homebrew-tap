# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/vaticle/typedb/releases/download/2.28.0-rc0/typedb-all-mac-arm64-2.28.0-rc0.zip"
    sha256 "3ed65b2daf9fbf56ddc2ef8f04b6542f27af81995e42b2e67c60b16ffb643fdf"
  end

  on_intel do
    url "https://github.com/vaticle/typedb/releases/download/2.28.0-rc0/typedb-all-mac-x86_64-2.28.0-rc0.zip"
    sha256 "015b47b7031f08ef8f3ec782aba5319df1370f6a18ad756c96493fabe3387674"
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
