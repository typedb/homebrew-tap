# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

cask 'typedb-studio' do
  version '3.0.0'

  on_arm do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-arm64/versions/3.0.0/typedb-studio-mac-arm64-3.0.0.dmg"
    sha256 "5899cb6c176719eccf93424a4984edafff55cbe169b9635ba3346159670c4476"
  end

  on_intel do
    url "https://repo.typedb.com/public/public-release/raw/names/typedb-studio-mac-x86_64/versions/3.0.0/typedb-studio-mac-x86_64-3.0.0.dmg"
    sha256 "7da6cc6420ca398866f84f491faa51fdfcd579d1b433f644b00c77afeed2ee1b"
  end

  name 'TypeDB Studio'
  homepage 'https://typedb.com'

  app "TypeDB Studio.app"

end
