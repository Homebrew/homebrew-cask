cask 'webcatalog' do
  version '20.0.6'
  sha256 '037d7a2e0be97d88475cd1dc5bb873327297d04968acd3970aaa25077f299140'

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
