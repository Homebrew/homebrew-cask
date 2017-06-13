cask 'webcatalog' do
  version '5.2.1'
  sha256 'adf48096578e5467677c9998ab4b5d1d2c3153b258b7abb14910a062fd421d91'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '53e7c05bc0d381483de96614d4d2ae18c9028cc9610aee6151f7317cc402cf01'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/downloads/mac'

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
