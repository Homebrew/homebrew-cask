cask 'webcatalog' do
  version '6.2.0'
  sha256 '1acad43afb616dbab03fee24f3e28902ec902fea3907c59243a7f0c65002917f'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'f7d29f47ffe516e84f7d49f5923d298f6f13ca8b869acec16bae792cd03d0b9c'
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
