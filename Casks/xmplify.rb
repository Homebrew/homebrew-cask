cask 'xmplify' do
  version '1.9.0'
  sha256 '98b624d8549b9b675a1fe01b14a322bb7faa6cf4559e79f9fb3566884b7f1561'

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
