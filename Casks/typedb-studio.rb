# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '2.28.4'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.28.4/typedb-studio-mac-arm64-2.28.4.dmg"
    sha256 "834350bb9618698512ea07af7f23af4bf3ca90ddaaad05d81de2f3e1843c2f16"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.28.4/typedb-studio-mac-x86_64-2.28.4.dmg"
    sha256 "a5f9ea8666277b9a7552ecddaf10290a8e52abe211e76fda730c5653e917b2e9"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
