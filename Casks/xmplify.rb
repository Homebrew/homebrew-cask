cask :v1 => 'xmplify' do
  version :latest
  sha256 :no_check

  url 'http://xmplifyapp.com/releases/Xmplify.dmg'
  name 'Xmplify'
  homepage 'http://xmplifyapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
