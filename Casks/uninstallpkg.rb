cask 'uninstallpkg' do
  version '1.0.23'
  sha256 'ddfcaedd4aa4880f2db7929212ca68add94e9bb2bc57d637bead0d0f6aa62038'

  url 'https://www.corecode.io/downloads/uninstallpkg_latest.zip'
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '0a390467cb94ce7e1fe0d24d6188525d85808564505bdd3eed685debdeec52c2'
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
