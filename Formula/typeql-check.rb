# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.14.0-rc0/typeql-check-mac-arm64-3.14.0-rc0.zip"
    sha256 "0278694da8ba3c163a0f2d435c606999f7b54696e43bb534d2ab8a7f1c66c935"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.14.0-rc0/typeql-check-mac-x86_64-3.14.0-rc0.zip"
    sha256 "a322bae636546435daf5611e6d8f5d928d5463e5d01d1d8dc1c7083eb4dabbfc"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
