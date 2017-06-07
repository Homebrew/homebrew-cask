cask 'trailer' do
  version '1.5.8'
  sha256 '7fc6c24caff4292cd72132d9205bfa20ccc5367926476172fd502911aadf31cf'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '95d01d343258173889229c9baeea7185a086b607db7010273a739c432b67c2f2'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
