cask 'webcatalog' do
  version '20.10.0'
  sha256 '16b84648a78ef0e5374bd551285400ede43edd6f2d9f230b107960346530514a'

  # github.com/quanglam2807/webcatalog/ was verified as official when first introduced to the cask
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
