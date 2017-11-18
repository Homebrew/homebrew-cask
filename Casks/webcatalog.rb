cask 'webcatalog' do
  version '7.3.0'
  sha256 '08f644cb713d2ca22717b80d3b4f6a85767010858a30c2171b8e773bff6110a9'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '4659c71da5dcfd4c818e0b6b3dda4b9763613b91904b08cf27c285f9d54b7ca9'
  name 'WebCatalog'
  homepage 'https://webcatalog.io/download/mac'

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
