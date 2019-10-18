cask 'uninstallpkg' do
  version '1.1.7'
  sha256 '8a11dc93f9a4467445d9c6683241fde51b731333c2a0cc9e7eebe3157ad3957d'

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml'
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
