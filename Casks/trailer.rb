cask 'trailer' do
  version '1.5.5'
  sha256 '5af1ed7d576bb79c0b964b0a2b2597286f7a170118512f19cbf0f9ef9227394d'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '7cf2e300d7276c1b825e4d69c3d1cd925e82575cec89a7035e2ae287488f75cb'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
