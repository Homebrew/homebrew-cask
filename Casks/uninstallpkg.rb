cask 'uninstallpkg' do
  version '1.0.29'
  sha256 '8c9d6ecb29e786535490173d186c870bf6c95ea482e3687a76ff46b949449778'

  url 'https://www.corecode.io/downloads/uninstallpkg_latest.zip'
  appcast 'https://www.corecode.io/uninstallpkg/history.html',
          checkpoint: 'a2e0a1e27f2e3bfc4f2bd3872acdb117c73b4471baf137bb6b1587ec7932192b'
  name 'UninstallPKG'
  homepage 'https://www.corecode.io/uninstallpkg/'

  app 'UninstallPKG.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
            launchctl: 'com.corecode.UninstallPKGDeleteHelper'

  zap delete: '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState',
      trash:  [
                '~/Library/Application Support/UninstallPKG',
                '~/Library/Preferences/com.corecode.UninstallPKG.plist',
              ]
end
