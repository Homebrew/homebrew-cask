cask 'uninstallpkg' do
  version '1.1.2'
  sha256 'a9046a149fdbd58be04f1ae023b2a189b17aa4c7166f7c8c3c4e8ce22622f9b9'

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '52a8b967ee93c3500bfb877e6242ea71af0cf997c15e7398c8d787d25df1f70b'
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
