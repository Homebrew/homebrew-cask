cask 'webcatalog' do
  version '7.6.1'
  sha256 '65c11319aba490df7dca12cb096b0b5df05bebbd81f0b3c19ce6269428b9c0dd'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'a88aa7cf434a5e3e4ccc13cd35a9600d9d2b9f9a287842b4516c4da8aabeb173'
  name 'WebCatalog'
  homepage 'https://webcatalog.io/download/mac'

  app 'WebCatalog.app'

  zap trash: [
               '~/Library/Application Support/WebCatalog',
               '~/Library/Cookies/com.webcatalog.app.binarycookies',
               '~/Library/Preferences/WebCatalog_Alt.plist',
               '~/Library/Preferences/com.webcatalog.app.helper.plist',
               '~/Library/Preferences/com.webcatalog.app.plist',
               '~/Library/Saved Application State/com.webcatalog.app.savedState',
             ]
end
