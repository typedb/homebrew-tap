# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '3.0.1'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/3.0.1/typedb-studio-mac-arm64-3.0.1.dmg"
    sha256 "a3227258a9f98a9b66124a7f4e7bd74f567bfce29bad42abfce5767800ebeb52"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/3.0.1/typedb-studio-mac-x86_64-3.0.1.dmg"
    sha256 "83b661f7672d1754c8e4256be0aa65bd9d14c6e7f38b1bf763eed7f481d7def1"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
