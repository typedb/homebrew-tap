# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '3.0.4'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/3.0.4/typedb-studio-mac-arm64-3.0.4.dmg"
    sha256 "806945dc093fc67ee54b5a65babc32007b17186c3e7894fb7d1c9cea101ac83e"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/3.0.4/typedb-studio-mac-x86_64-3.0.4.dmg"
    sha256 "dbc20fa57f35dfe7b28b8906f2ff9d24cd374d387fce2955d046fa4a31d9095d"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
