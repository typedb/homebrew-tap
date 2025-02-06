# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-snapshot/raw/names/typedb-all-mac-arm64/versions/0.0.0-20dc0305e309630f9f05ed68ca35003e6e461427/typedb-all-mac-arm64-0.0.0-20dc0305e309630f9f05ed68ca35003e6e461427.zip"
    sha256 "22bddec7cd60128754bfce519bf934bbe63d65d1883188d315d3045bd66e73bc"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-snapshot/raw/names/typedb-all-mac-x86_64/versions/0.0.0-20dc0305e309630f9f05ed68ca35003e6e461427/typedb-all-mac-x86_64-0.0.0-20dc0305e309630f9f05ed68ca35003e6e461427.zip"
    sha256 "7b69204fa91851315ce5737a7f7f235bdac55f45b0eb32711d028c5d33381293"
  end

  license "MPL-2.0"

  depends_on "openjdk"


  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
    bin.env_script_all_files(libexec, Language::Java.java_home_env)
  end
end
