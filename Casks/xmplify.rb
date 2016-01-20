cask 'xmplify' do
  version '1.7.5'
  sha256 '924e57fb83241b95950a1f6fae94341004b54c58fdb339aa137f26b1248176ee'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          checkpoint: '8c9217880473b62c35a5a82d1c895158528c94f0b58bc7b18d94cac6686eca78'
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
