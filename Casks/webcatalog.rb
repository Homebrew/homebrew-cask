cask 'webcatalog' do
  version '6.0.0'
  sha256 '698bad59ab8e978bf7a7a8aaf8e8e62b84c91132db827b6572dac1ee0b3812a0'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '80fe4496b798a929b6d98a8e15d75a14267dbe6d8a58ffdcbd96663d7d252a02'
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
