cask 'xmplify' do
  version '1.9.3'
  sha256 'f059ea855e65a318a29ac18bcd1787757666afa028213017703457217f5b14dd'

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
