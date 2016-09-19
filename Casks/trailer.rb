cask 'trailer' do
  version '1.5.0'
  sha256 'c724f1c624a8e670d41d0f0b66cf36eb58ff08898965ca98b81affa4301d3d19'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '19d474c514f7b06e1ce9532bbd1e12e112c47c2bc285362c98ee8f81f32acfc5'
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
