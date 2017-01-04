cask 'trailer' do
  version '1.5.3'
  sha256 'abb1f3c6ae39805606a08e2fe154e7d07af70e2c08411a0e59029941516a4c13'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'b6559dfaaf6a357f106233417a207f0399087188c64d91f273924055c06ef722'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
