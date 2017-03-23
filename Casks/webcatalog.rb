cask 'webcatalog' do
  version '3.4.0'
  sha256 '259defdb631646451c1edbda635e24227ba9c578017f8ddb65e303d3f5e31c2b'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'fb21aefc5e0fdb5c15fc19170cb4bb41316131998e17a665f74fbf8eaabbc9b0'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

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
