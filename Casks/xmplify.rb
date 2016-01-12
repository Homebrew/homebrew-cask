cask 'xmplify' do
  version '1.7.5'
  sha256 '924e57fb83241b95950a1f6fae94341004b54c58fdb339aa137f26b1248176ee'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          :sha256 => 'ebf9790e9d752b0decf447b8ae74b00c8709f15fde0df062353cb849094d4b57'
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
