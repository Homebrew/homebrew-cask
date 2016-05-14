cask 'trailer' do
  version '1.3.21'
  sha256 '703f89819b57a7f5588b733f60ca823b5df5ea63ae95204c2036b2c17b752e9b'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '9c1590632ab790e2b84a2237613b1a01da61cc0459c5ca4b58e37e05f19a32f4'
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
