cask :v1 => 'xmplify' do
  version :latest
  sha256 :no_check

  url 'http://xmplifyapp.com/releases/Xmplify.dmg'
  name 'Xmplify'
  appcast 'http://xmplifyapp.com/appcast.xml',
          :sha256 => 'c07056253091ae2c4955af290992f23042c356c3ac33fc23e86604f07349c83d'
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
                   '~/Library/Saved Application State/au.com.moso.Xmplify.savedState'
                 ]
end
