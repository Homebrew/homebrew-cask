cask 'xmplify' do
  version '1.8.0'
  sha256 'edf7eb1823e62302c9f44efb927efb25d159392bfa708a20d4a1785d8d16ebf0'

  url "http://xmplifyapp.com/releases/Xmplify-#{version}.dmg"
  appcast 'http://xmplifyapp.com/appcast.xml',
          checkpoint: 'a0528544f8f5ca1cdda9d3d0d32f4746dab296071faca625976029738007c858'
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
