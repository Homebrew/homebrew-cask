cask 'webcatalog' do
  version '7.0.7'
  sha256 '3e99a1d7681b8c1550b31b51dcc8b91ffc0b82eb7901ee00a87509b10acd40ea'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'abc62fa7874fe5137cf33d4e70f163d96a3704e7c3ff3231a479a92bc614d1cb'
  name 'WebCatalog'
  homepage 'https://webcatalog.io/download/mac'

  app 'WebCatalog.app'

  zap delete: [
                '~/Library/Application Support/WebCatalog',
                '~/Library/Cookies/com.webcatalog.app.binarycookies',
                '~/Library/Preferences/WebCatalog_Alt.plist',
                '~/Library/Preferences/com.webcatalog.app.helper.plist',
                '~/Library/Preferences/com.webcatalog.app.plist',
                '~/Library/Saved Application State/com.webcatalog.app.savedState',
              ]
end
