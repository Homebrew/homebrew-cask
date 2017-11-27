cask 'uninstallpkg' do
  version '1.1.1'
  sha256 '24c29b2046751b85d78b196bb6f791cef689d18dc4a8996314b4c11855cf775c'

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '274be382898eb3ec168bb1ade4ae7f184b82415e97ca7c9a495dc4702a25ee6d'
  name 'UninstallPKG'
  homepage 'https://www.corecode.io/uninstallpkg/'

  app 'UninstallPKG.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
            launchctl: 'com.corecode.UninstallPKGDeleteHelper'

  zap trash: [
               '~/Library/Application Support/UninstallPKG',
               '~/Library/Preferences/com.corecode.UninstallPKG.plist',
               '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState',
             ]
end
