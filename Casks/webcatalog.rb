cask 'webcatalog' do
  version '5.0.0'
  sha256 '0e2f6c535fc0beaaed8b79b3bc5b72ce90804412b686e1c33bcc4892e7c616ca'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '8366161fa961bd1c52f2ee1a95f3648df66a81a0f30dd1d7bfab17964e687a87'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/downloads/mac'

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
