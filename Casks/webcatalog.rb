cask 'webcatalog' do
  version '7.7.1'
  sha256 '9cb35b381d66a8cdbdd8714ff7776c149f8ed529af0abcd5b1a25c0739c926ff'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: 'e4a8e11615e820f9abd5d1c1da2f6bf6ca9599c56f6a39dffcf272c7fca0de73'
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
