cask 'uninstallpkg' do
  version '1.0.21'
  sha256 '00cf2233a29111a8308ae1de438c703d2c699c4b7322d347b0d8ade386a1f352'

  url "https://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'https://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          checkpoint: '6b298192e3a2d10e5828c24a23b4a6df06d12c551c43627083a4e6f45ea6eb6e'
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
