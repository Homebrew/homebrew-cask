cask 'trailer' do
  version '1.5.7'
  sha256 'cbe5d00f52f156d670bb75824d34a36aec2e43a833f57c9e8bfe1303aef4a047'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'f0426f92decd3afc5828b6bb48dc479f0746938b3a14d87e9a0b852bbf906b54'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
