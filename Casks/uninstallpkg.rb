cask 'uninstallpkg' do
  version '1.1.5'
  sha256 '8a92278d73334007d1df581584f7364adede9b74d4d46580055a435484c459cd'

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '86d3ecc197856eb5c951be28803eca1c1d319fd255ed7ef6981d66547a31a678'
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
