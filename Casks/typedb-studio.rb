# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '2.28.6'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.28.6/typedb-studio-mac-arm64-2.28.6.dmg"
    sha256 "b699a58a599561b4edc06e2bcceb00ee79d5662484448a52ae7924401915e032"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.28.6/typedb-studio-mac-x86_64-2.28.6.dmg"
    sha256 "1a39da00596d5ca7084785d2598128ae8130133d9d7abaaffffd7502776b0cd8"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
