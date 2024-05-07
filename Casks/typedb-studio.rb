# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '2.28.0'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.28.0/typedb-studio-mac-arm64-2.28.0.dmg"
    sha256 "4c96b26e7b9b76e35d421458c100064a086582cdc18f40633b316e7bdbdce27e"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.28.0/typedb-studio-mac-x86_64-2.28.0.dmg"
    sha256 "438df7ee13342128bf2531d5dfc924dc747403db4ee2212b3cc7744814cca2cb"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
