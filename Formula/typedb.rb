# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/typedb/typedb/releases/download/2.29.1/typedb-all-mac-arm64-2.29.1.zip"
    sha256 "1270565acd7d5c61475831dac408f2069533ecf4ffee416ae474962ce1a71603"
  end

  on_intel do
    url "https://github.com/typedb/typedb/releases/download/2.29.1/typedb-all-mac-x86_64-2.29.1.zip"
    sha256 "82ad962d3248d0a883d129a01b7593960031758283270128601a948be637854a"
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
