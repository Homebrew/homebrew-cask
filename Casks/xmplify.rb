cask 'xmplify' do
  version '1.7.6'
  sha256 '46b89f5992bcd7fce732bca841c4dc7a62ba3116d35356704de48f0a5b3cebef'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          checkpoint: '72a78dd90559de5ea06934fb009fd13ddd51647c3ee2e2e725d730af48b4f122'
  name 'Xmplify'
  homepage 'http://xmplifyapp.com/'
  license :commercial

  app 'Xmplify.app'

  uninstall quit: 'au.com.moso.Xmplify'

  zap delete: [
                '~/Library/Caches/au.com.moso.Xmplify',
                '~/Library/Logs/Xmplify.log',
                '~/Library/Logs/Xmplify Quick Look Generator.log',
                '~/Library/Preferences/au.com.moso.Xmplify.plist',
                '~/Library/Preferences/au.com.moso.Xmplify.LSSharedFileList.plist',
                '~/Library/Saved Application State/au.com.moso.Xmplify.savedState',
              ]
end
