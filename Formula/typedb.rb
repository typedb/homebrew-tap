# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "Polymorphic database powered by types"
  homepage "https://typedb.com"

  on_arm do
    url "https://github.com/vaticle/typedb/releases/download/2.28.3/typedb-all-mac-arm64-2.28.3.zip"
    sha256 "c4f836a556467c7e4673f1d9b919c7a70ff4f439b9d1a025ee1503d090d94048"
  end

  on_intel do
    url "https://github.com/vaticle/typedb/releases/download/2.28.3/typedb-all-mac-x86_64-2.28.3.zip"
    sha256 "ebca8248171b835f851547fce5152b9bdf8a7b93514a05f715e980c198edb17b"
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
