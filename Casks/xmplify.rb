cask 'xmplify' do
  version '1.9.2'
  sha256 '5fad23731bed26d7f8952cf6a4304715d74a181baa05d0ceeb7d56deeb0dbe6e'

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
