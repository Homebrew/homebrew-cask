cask 'uninstallpkg' do
  version '1.0.27'
  sha256 'a5e2380519fb51e0cef1ef1eb65f83e5a1259fc9dccfb039af312bc78b5adfc0'

  url 'https://www.corecode.io/downloads/uninstallpkg_latest.zip'
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '1d76ab401d523c6dafa9adbde5323d9aa4bcae64d1ec6775581b0d82804bf673'
  name 'UninstallPKG'
  homepage 'https://www.corecode.io/uninstallpkg/'

  app 'UninstallPKG.app'

  zap delete: [
                '~/Library/Preferences/com.corecode.UninstallPKG.plist',
                '~/Library/Application Support/UninstallPKG/',
                '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState/',
                '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
                '/Library/LaunchDaemons/com.corecode.UninstallPKGDeleteHelper.plist',
              ]
end
