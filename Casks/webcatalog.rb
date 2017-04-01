cask 'webcatalog' do
  version '3.4.4'
  sha256 '7bb7e3d58b0ab68d3a0be117d16b2d03349f91b00e242ca21dbfd42002507082'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '041280020e5a1d1eeedc8ca6d1483a81e59fe564db74ad97869dff056ebd48c7'
  name 'WebCatalog'
  homepage 'https://getwebcatalog.com/'

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
