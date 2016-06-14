cask 'uninstallpkg' do
  version '1.0.21'
  sha256 'e1987bdc4c2f9a409cb09dcdc608a266ad5051e3aa2da6c35c16e58b34774aa8'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          checkpoint: 'a833217cd5268b58926f37c388df424bf9c8f1e3867e49f004daf218fcbbbb15'
  name 'UninstallPKG'
  homepage 'https://www.corecode.at/uninstallpkg/'
  license :freemium

  app 'UninstallPKG.app'

  zap delete: [
                '~/Library/Preferences/com.corecode.UninstallPKG.plist',
                '~/Library/Application Support/UninstallPKG/',
                '~/Library/Saved Application State/com.corecode.UninstallPKG.savedState/',
                '/Library/PrivilegedHelperTools/com.corecode.UninstallPKGDeleteHelper',
                '/Library/LaunchDaemons/com.corecode.UninstallPKGDeleteHelper.plist',
              ]
end
