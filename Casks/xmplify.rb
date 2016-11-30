cask 'xmplify' do
  version '1.8.1'
  sha256 'd9dfc2a48deb9a0088a0c40d60714f904e972da3b9f4b84fa9237f28ff5d41c0'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          checkpoint: 'c9f2ff3fc510c1328de3736f650c9e609f5d59b7960be083e9361f20a233dc95'
  name 'Xmplify'
  homepage 'http://xmplifyapp.com/'

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
