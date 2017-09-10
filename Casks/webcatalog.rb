cask 'webcatalog' do
  version '6.3.1'
  sha256 '9e7243abea1eaec510579709fd776ef5bd556a9a8262d0b8be827b0502df09bf'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'ca82939a3428d477f8b4220b4a7abf9276a92de3ecc400141b2f42d2910e6065'
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
