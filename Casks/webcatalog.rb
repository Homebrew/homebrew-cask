cask 'webcatalog' do
  version '20.4.1'
  sha256 '60220ca0e54b43e4c0e2dbbb9314f77e7e7018b13cba32d481e883c82ba746d3'

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
