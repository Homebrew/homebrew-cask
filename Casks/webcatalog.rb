cask 'webcatalog' do
  version '5.1.0'
  sha256 '59f652c9da402372c6a00a96e68d20316461ef54a369ce6a285631d365a6599a'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'a65f887267d1734e802c486489ee01f26b1401f7c0be750616fc0ecf97348614'
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
