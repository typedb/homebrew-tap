# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.14.0/typeql-check-mac-arm64-3.14.0.zip"
    sha256 "9f2431dba7ff6768a760c53996fa32c616adfe4de87d1093208ebd984e2db73c"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.14.0/typeql-check-mac-x86_64-3.14.0.zip"
    sha256 "1183a20760272f0b2373e286e0a2b078fa4f787043f820520cb270e420c1de43"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
