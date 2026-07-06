# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

class TypeqlCheck < Formula
  desc "Validate TypeQL query syntax from the command line"
  homepage "https://typedb.com"

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-arm64/versions/3.12.0/typeql-check-mac-arm64-3.12.0.zip"
    sha256 "556613bb286d0fc9d3cb05dacaf3fc7dfc5c41a58f635227f7ed47dc96cf30b8"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typeql-check-mac-x86_64/versions/3.12.0/typeql-check-mac-x86_64-3.12.0.zip"
    sha256 "767d69b221086020c8ea3642eb9082a224282e0bb6f7d125214575f3869abc12"
  end

  license "MPL-2.0"

  def install
    bin.install "typeql-check"
  end
end
