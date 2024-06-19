# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '2.28.3'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.28.3/typedb-studio-mac-arm64-2.28.3.dmg"
    sha256 "8e4a9509b9dc30620779f0abea2e51f844e5fa82d89db76f3583961ce851908d"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.28.3/typedb-studio-mac-x86_64-2.28.3.dmg"
    sha256 "37328dd252edf736bc6356cd1eb83995a4d025997b2abb28e011f4fc1a6096b4"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
