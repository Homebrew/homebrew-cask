cask 'webcatalog' do
  version '20.2.0'
  sha256 '6781d65a326b51eb35b1710552163a50927ee21a93ca501b6b8c359ad4cbf8b5'

  # github.com/quanglam2807/webcatalog was verified as official when first introduced to the cask
  url "https://github.com/quanglam2807/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast 'https://github.com/quanglam2807/webcatalog/releases.atom'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

  auto_updates true

  app 'WebCatalog.app'

  zap trash: [
               '~/Library/Application Support/WebCatalog',
               '~/Library/Caches/com.webcatalog.jordan',
               '~/Library/Caches/com.webcatalog.jordan.ShipIt',
               '~/Library/Preferences/com.webcatalog.jordan.plist',
               '~/Library/Saved Application State/com.webcatalog.jordan.savedState',
             ]
end
