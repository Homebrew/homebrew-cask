cask 'uninstallpkg' do
  version '1.0.26'
  sha256 'c03862c2764c9b39e5ad85dfafa503ba02ed5f584e8ab83bc27e908247026dda'

  url 'https://www.corecode.io/downloads/uninstallpkg_latest.zip'
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: 'f02e384b3df3cce5be6d633ce40d20f6b3b04aa3bb2aedceaab8c0c02280dbee'
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
