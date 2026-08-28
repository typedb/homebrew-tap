# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.13.0-rc0/typeql-check-mac-arm64-3.13.0-rc0.zip"
    sha256 "04492f034e06ab986bf3601a5ec6a314c03b4bf868a5330d0041ff69be215de0"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.13.0-rc0/typeql-check-mac-x86_64-3.13.0-rc0.zip"
    sha256 "a58060f2bfd72d0307e7e7ef554ecf54de69b3bafca0934465ae165f873f3b98"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
