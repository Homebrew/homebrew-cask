cask 'webcatalog' do
  version '6.4.1'
  sha256 '42d984fdc05133f88d6d279a9c07fda0f8ba9c654985a63fe7c489ad4e645462'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '63d368b78520f6f57992e560679e624955c1559ce9d81290b62d71a359c4f67e'
  name 'WebCatalog'
  homepage 'https://webcatalog.io/download/mac'

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
