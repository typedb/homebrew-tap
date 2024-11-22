# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '2.28.5'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/2.28.5/typedb-studio-mac-arm64-2.28.5.dmg"
    sha256 "11a3d5bb88d64d3796b68015aded49a635165201fa41a5688df0b0a874d920ef"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/2.28.5/typedb-studio-mac-x86_64-2.28.5.dmg"
    sha256 "0e16437d226858e1eecd21976f507bbb3341caddcf38e6f3df30238bf66207d8"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
