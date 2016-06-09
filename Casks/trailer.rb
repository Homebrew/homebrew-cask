cask 'trailer' do
  version '1.4.1'
  sha256 '218cac2f18847306292d1046cf416e697bf463d59c4e440e5cf412178a6857a2'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'c0c76e12e4d1bc700e73cd37dea74e95103a483741ed43b2bdd9abafc9b3de49'
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
