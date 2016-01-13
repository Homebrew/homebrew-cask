cask 'xmplify' do
  version '1.7.5'
  sha256 '924e57fb83241b95950a1f6fae94341004b54c58fdb339aa137f26b1248176ee'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          :sha256 => 'e2c7c700b4ceb44a57e1a9f4cd5daafd1ee986d2894603ac4d7f77b4dee907db'
  name 'Xmplify'
  homepage 'http://xmplifyapp.com/'
  license :commercial

  app 'Xmplify.app'

  uninstall :quit => 'au.com.moso.Xmplify'

  zap :delete => [
                   '~/Library/Caches/au.com.moso.Xmplify',
                   '~/Library/Logs/Xmplify.log',
                   '~/Library/Logs/Xmplify Quick Look Generator.log',
                   '~/Library/Preferences/au.com.moso.Xmplify.plist',
                   '~/Library/Preferences/au.com.moso.Xmplify.LSSharedFileList.plist',
                   '~/Library/Saved Application State/au.com.moso.Xmplify.savedState',
                 ]
end
