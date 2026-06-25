# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.12.0-rc0/typeql-check-mac-arm64-3.12.0-rc0.zip"
    sha256 "847c2832ef913c6369b32ef81a806d6540ae9497de7594c72af9e797843a373e"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.12.0-rc0/typeql-check-mac-x86_64-3.12.0-rc0.zip"
    sha256 "ab61b8512c95d6ab7477797c80be74baaf4e6bf9b9d013c7acf1cc11628880f8"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
