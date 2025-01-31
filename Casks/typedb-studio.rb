# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '3.0.5'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/3.0.5/typedb-studio-mac-arm64-3.0.5.dmg"
    sha256 "3037e60affb2dae44feb306900395129a889e45dbc722b62cc80b2a2eaffe348"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/3.0.5/typedb-studio-mac-x86_64-3.0.5.dmg"
    sha256 "c2de7400d6d037ececcc1ff6631c84dbe3d20568f41e4a247141f1161355075a"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
