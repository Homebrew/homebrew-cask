cask 'trailer' do
  version '1.5.1'
  sha256 '440225079046bd412d1bf46f8f28e946969d1193d47fbad85d8ac076c79071bd'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '268413362de9da5989eee27099486f2558c4e3a320d061bb97399a55d2c56850'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  zap delete: [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
