cask 'xmplify' do
  version '1.9.4'
  sha256 '7b453fca89edb1ce16e57b90efc7e193bae4245aa64e1920d2cc9fd6674ca500'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml'
  name 'Xmplify'
  homepage 'http://xmplifyapp.com/'

  app 'Xmplify.app'

  uninstall quit: 'au.com.moso.Xmplify'

  zap trash: [
               '~/Library/Caches/au.com.moso.Xmplify',
               '~/Library/Logs/Xmplify.log',
               '~/Library/Logs/Xmplify Quick Look Generator.log',
               '~/Library/Preferences/au.com.moso.Xmplify.plist',
               '~/Library/Preferences/au.com.moso.Xmplify.LSSharedFileList.plist',
               '~/Library/Saved Application State/au.com.moso.Xmplify.savedState',
             ]
end
