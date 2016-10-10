cask 'uninstallpkg' do
  version '1.0.22'
  sha256 '531be8e7d1ce3fdfa1035a70b151f07464aa242a61209c7b85bda6b90cac2a69'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          checkpoint: '0a390467cb94ce7e1fe0d24d6188525d85808564505bdd3eed685debdeec52c2'
  name 'UninstallPKG'
  homepage 'https://www.corecode.at/uninstallpkg/'

  app 'UninstallPKG.app'

  zap delete: [
                '~/Library/Preferences/com.corecode.UninstallPKG.plist',
                '~/Library/Application Support/UninstallPKG/',
                '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState/',
                '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
                '/Library/LaunchDaemons/com.corecode.UninstallPKGDeleteHelper.plist',
              ]
end
