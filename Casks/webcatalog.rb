cask 'webcatalog' do
  version '5.2.0'
  sha256 '05a66ed27f84054e664cbe6417e036d436bea6a2aa85b13f1bc5547ab02452c5'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '0926f1ecfa79d1152af17835ebfe3dbf4d038c068fa5ae1070508ad0afd26a99'
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
