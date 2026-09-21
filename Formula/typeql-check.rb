# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.13.6/typeql-check-mac-arm64-3.13.6.zip"
    sha256 "e7b1bfe5f5350bb3002928205f933fc454ea912912ff9708673866385e1f3766"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.13.6/typeql-check-mac-x86_64-3.13.6.zip"
    sha256 "8d9d927d913773c1de254886accf1d6d0e5ef6f3fe11569d427b82ef4bc39f6a"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
