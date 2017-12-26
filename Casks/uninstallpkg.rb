cask 'uninstallpkg' do
  version '1.1.3'
  sha256 '6922fada860d7a70bd5f8caeb77b1e69f96191f149f94fe0e1249da1a0140d41'

  url "https://www.corecode.io/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.io/uninstallpkg/uninstallpkg.xml',
          checkpoint: '00d28ce452119bd8bcb44b4cd3e30544491b64458c9b94b71008acd6114d0f60'
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
