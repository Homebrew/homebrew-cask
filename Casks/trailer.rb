cask 'trailer' do
  version '1.5.2'
  sha256 '275b6af5e5fd95e3f4d911def2fb85a37f2a46b5e715dece58f41f798edf4109'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '624edb1eed7b770f882ffc925f7270ab523afa78ab7d1d940c2e2c663211a6eb'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
