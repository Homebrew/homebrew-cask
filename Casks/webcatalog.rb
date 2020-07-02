cask 'webcatalog' do
  version '22.2.0'
  sha256 '047bd334ac85982665a8f6afe68dc468b4c19632b827975f876094fe1dd93a7c'

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
