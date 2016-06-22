cask 'trailer' do
  version '1.4.2'
  sha256 '5dcf11adda16d08e26616eb2df672c06d0b40ccd15cbc2c9454cd946a10ff3fa'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'a1371c4826b3cbc6cdb8cb089332192d9186d029248de3da6ca48d0103bbcfeb'
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
