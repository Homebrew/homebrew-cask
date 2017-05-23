cask 'webcatalog' do
  version '5.1.1'
  sha256 '854119fd481c0913b5a13262c0527fd44c6f646c7709ae10ccf0fda864d442ae'

  # github.com/webcatalog/desktop/releases/download/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/desktop/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast 'https://github.com/webcatalog/desktop/releases.atom',
          checkpoint: '56199c9579eb45b8d038ec2acb696188882b109e2a043e9c84d556f0787ad335'
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
