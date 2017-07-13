cask 'webcatalog' do
  version '6.1.0'
  sha256 'cfb58095ba2bf7cfc2804dc816ec69bb3a80bbd1d4c657a06610707d7d0fd953'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '6d0d9a0d86a3b3d0b014c47a1e187d00bbb438bf21199947bf7c8946ec977387'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/download/mac'

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
