cask 'webcatalog' do
  version '8.0.5'
  sha256 '8ff24b0e9162b69346fc6a8863df93e7b61f3ed38bf2910d82d73d2d69bd911d'

  # github.com/webcatalog/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/webcatalog/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/webcatalog/releases.atom',
          checkpoint: '762f0939782f5fb805bdfe8d28346d9f5d81772bdb08d369b90a5e475786bea4'
  name 'WebCatalog'
  homepage 'https://webcatalog.io/'

  app 'WebCatalog.app'

  zap trash: [
               '~/Library/Application Support/WebCatalog',
               '~/Library/Cookies/com.webcatalog.app.binarycookies',
               '~/Library/Preferences/WebCatalog_Alt.plist',
               '~/Library/Preferences/com.webcatalog.app.helper.plist',
               '~/Library/Preferences/com.webcatalog.app.plist',
               '~/Library/Saved Application State/com.webcatalog.app.savedState',
             ]
end
