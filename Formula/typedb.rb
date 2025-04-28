# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

# IMPORTANT: any changes to the formula should be propagated to Homebrew/homebrew-core
class Typedb < Formula
  desc "The power of programming, in your database"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-arm64/versions/3.2.0-rc2/typedb-all-mac-arm64-3.2.0-rc2.zip"
    sha256 "04b0cc6b0e579373b0a2f9720ab510db660205135f678527ed18c99479ad3ec6"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-all-mac-x86_64/versions/3.2.0-rc2/typedb-all-mac-x86_64-3.2.0-rc2.zip"
    sha256 "2dcdc48546efc2e9288d925d09925161929e509b6b26ca99ca3423b25bbb7337"
  end

  license "MPL-2.0"

  def install
    libexec.install Dir["*"]
    bin.install libexec / "typedb"
  end
end
