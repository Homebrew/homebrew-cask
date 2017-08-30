cask 'uninstallpkg' do
  version '1.0.28'
  sha256 'afbf775198b7d2429add5e0dbe9fdf9a77dbe55db406a1e1adeb3ad26e9e8842'

  url 'https://www.corecode.io/downloads/uninstallpkg_latest.zip'
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '89f923f6b3e8eb82cf9d3a291cb8ea339f34916d07110160f571286cc2bc647d'
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
