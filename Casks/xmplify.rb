cask 'xmplify' do
  version '1.9.1'
  sha256 'd362c997c5baedae5ea3569aae6013300b435b00900cfb825b2ff41bace58a58'

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
