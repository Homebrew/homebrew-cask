cask 'trailer' do
  version '1.4.0'
  sha256 'ddc63a50b62a932348a3cc3497e10034cb21bd6e333524561412a31d451ec626'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '0caa104ecac6540191af7e53eee1ebda750fef61dd6b1e81d476b93fd94d52eb'
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
