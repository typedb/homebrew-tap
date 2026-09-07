# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.13.0/typeql-check-mac-arm64-3.13.0.zip"
    sha256 "8b617cce21f7f504baf3e9934ae14b40700d8f9d8253fd82ba5790c97a148b7c"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.13.0/typeql-check-mac-x86_64-3.13.0.zip"
    sha256 "83322c6009f89847a538c79dc77dfa5186882ec203001523e7f14d34108e843e"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
