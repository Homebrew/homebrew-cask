cask 'trailer' do
  version '1.4.3'
  sha256 '9a074981144f94db638f5608300f215806fece6190396be1efa74bef93529b1b'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'b001e27eb5d9a938b0b70492553fa0a42ab66dd56c471e602e10f9ca430053dd'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
