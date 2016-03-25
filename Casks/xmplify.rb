cask 'xmplify' do
  version '1.7.7'
  sha256 '57bb4a15ecc4a1d95ced30ef5dacac1ca8b28b02d572db62f654554805014de6'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          checkpoint: 'a1c4d4defff90ba2eff59bf781b656dde85878326dc0172b698df16b4d2ac57e'
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
