cask 'trailer' do
  version '1.5.9'
  sha256 'd678d81121dfae3a1575be18ba364d834dec8a9137f0f821835e4aebc5193f3e'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '6ee92ea0290582f288bc2e37d75e998d1de7dd34df1dfb5b54d085d7c679a65b'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
