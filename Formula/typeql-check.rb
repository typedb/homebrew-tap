# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.15.0/typeql-check-mac-arm64-3.15.0.zip"
    sha256 "d6858953f1371751b06617a1842e03d8c669cd5ca6e6ceb96c11e10a9b50713b"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.15.0/typeql-check-mac-x86_64-3.15.0.zip"
    sha256 "71d028235d087eb96c60a649a9d125bf970847cd371b9f8b24fac44352ab5690"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
