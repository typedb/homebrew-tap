# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.15.0-rc3/typeql-check-mac-arm64-3.15.0-rc3.zip"
    sha256 "e2bb5039848c834f37b69433a3303fef1a71ed221c76c94b75b3acf2935ed762"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.15.0-rc3/typeql-check-mac-x86_64-3.15.0-rc3.zip"
    sha256 "539d61a562c4ce8192b72f2ebfae22a2f0e3e3de9b800474246ae4341603f91c"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
